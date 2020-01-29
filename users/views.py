from django.contrib.auth import update_session_auth_hash
from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.contrib.auth.forms import UserCreationForm, PasswordChangeForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.views.generic.edit import FormView
from .models import Upload, get_default_my_date
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm, UploadForm
from django.http import FileResponse, HttpResponse
import zipfile
from django.core.mail import EmailMessage, EmailMultiAlternatives
from mezzanine.conf import settings
from pathlib import Path
import uuid, os
from datetime import datetime

# website = "dyslexia.computing.clemson.edu"
website = "127.0.0.1:8000"
# Create your views here.

def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, "Congratulations. Account created for you: {}.\nYou are now able to log in.".format(username))
            return redirect('users-login')
    else:
        form = UserRegisterForm()
    return render(request, 'users/register.html', {'form': form})


@login_required
def profile(request):
    if request.method == 'POST':
        u_form = UserUpdateForm(request.POST, instance=request.user)
        p_form = ProfileUpdateForm(request.POST, request.FILES, instance=request.user.profile)
        if u_form.is_valid() and p_form.is_valid():
            u_form.save()
            p_form.save()
            messages.success(request, "Congratulations. Your profile has been updated.")
            return redirect('users-profile')
    else:
        u_form = UserUpdateForm(instance=request.user)
        p_form = ProfileUpdateForm(instance=request.user.profile)

    context = {
        'u_form': u_form,
        'p_form': p_form,
    }
    return render(request, 'users/profile.html', context)

@login_required
def change_password(request):
    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important!
            messages.success(request, 'Your password was successfully updated!')
            # return redirect('change_password')
            return redirect('users-profile')
        else:
            messages.error(request, 'Please correct the error below.')
    else:
        form = PasswordChangeForm(request.user)
    return render(request, 'users/change_password.html', {
        'form': form
    })


@login_required
def dataset(request):
    context = {
        'data': Upload.objects.filter(owner=request.user).order_by('-date_uploaded')
    }
    return render(request, 'users/dataset.html', context)

# @login_required
# def upload(request):
#     if request.method == 'POST':
#         form = UploadForm(request.POST, request.FILES)
#         if form.is_valid():
#             form.save()
#             request.user.upload.name = request.FILES.name
#             request.user.upload.size = request.FILES.size
#             request.user.upload.owner = request.user
#             messages.success(request, "Congratulations. Data uploaded successfully!")
#             return redirect('users-upload')
#     else:
#         form = UploadForm()
#
#     context = {
#         'form': form,
#     }
#     return render(request, 'users/upload.html', context)


class UploadView(FormView):
    form_class = UploadForm
    template_name = 'users/upload.html'
    # success_url = '/home'
    success_url = reverse_lazy('users-dataset')

    def post(self, request, *args, **kwargs):
        form_class = self.get_form_class()
        form = self.get_form(form_class)
        files = request.FILES.getlist('brain_file')
        if form.is_valid():
            for f in files:
                ...  # Do something with each file.
                # filename = "%s%s_%s" % (request.user.username, request.user.id, uuid.uuid4())
                # obj = Upload(name=filename, size=f.size, brain_file="brainData/"+filename+".nii", owner=self.request.user)
                obj = Upload(name=f.name, size=f.size, brain_file=f, owner=self.request.user)
                obj.save()
            return self.form_valid(form)
        else:
            return self.form_invalid(form)

def mysend_email(request, subject, content, link):
    from_email, to = settings.DEFAULT_FROM_EMAIL, request.user.email
    text_content = "dyslexia consortium"
    html_content = '<html><h>{}</h><body><a href="http://{}">Click Here</a></body></html>'.format(content, link)
    msg = EmailMultiAlternatives(subject, text_content, from_email, [to])
    msg.attach_alternative(html_content, "text/html")
    msg.send(fail_silently=True)

@login_required
def download(request):
    response = None
    if request.method == 'POST':
        checked_id = request.POST.getlist('checks')
        # print(type(checked_id))
        print(checked_id)
        if checked_id == []:
            messages.warning(request, "You Haven't Chose Any Files!")
            # return redirect('users-download')
        else:
            messages.success(request, "Will send you email after data preparation complete."
                                      "Please do not repeat downloading, thanks.")
            # response = HttpResponse(content_type='application/zip')
            # print(response)
            # zip_file = zipfile.ZipFile(response, 'w')
            date_time = get_default_my_date().strftime("%m%d%Y%H%M%S")
            print(date_time)
            filename = "%s%s_%s_%s" % (request.user.username, request.user.id, date_time,
                                                                  uuid.uuid4())+".zip"
            # filepath = "static/media/download/" + filename
            filepath = os.path.join(settings.DOWNLOAD_ROOT, filename)
            print(filepath)
            # print(Path.cwd())
            zip_file = zipfile.ZipFile(filepath, "w")

            for idx in checked_id:
                obj = Upload.objects.get(pk=idx).brain_file
                print(obj.name)
                zip_file.write(obj.path, obj.name, zipfile.ZIP_DEFLATED)
            # response['Content-Disposition'] = 'attachment; filename=dyslexia_data'
            zip_file.close()

            mysend_email(request, "brain MRI data from Dyslexia Consortium",
                         "Congratulations. Download succeed.Please use the following link to download.",
                            website+settings.DOWNLOAD_URL+filename)

            # msg = EmailMessage("MRI brain data from Dyslexia Consortium", "Congratulations. Download succeeds."
            #                     "<h1><a href={}>Click Here to Download.</a></h1>".format(website+filepath),
            #                    to=[request.user.email]); msg.content_subtype = "html";
            # msg.attach_file(filepath, "application/zip")
            # msg.send()

            # response =response.streaming
            # return response
        return redirect('users-download')

    context = {
        # 'data': Upload.objects.all().order_by('-date_uploaded'),
        'data': Upload.objects.exclude(owner=request.user).order_by('-date_uploaded'),
    }
    return render(request, 'users/download.html', context)

