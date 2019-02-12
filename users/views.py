from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.views.generic.edit import FormView
from .models import Upload
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm, UploadForm
from django.http import FileResponse, HttpResponse
import zipfile

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
                obj = Upload(name=f.name, size=f.size, brain_file=f, owner=self.request.user)
                obj.save()
            return self.form_valid(form)
        else:
            return self.form_invalid(form)

@login_required
def download(request):
    response = None
    if request.method == 'POST':
        checked_id = request.POST.getlist('checks')
        # print(type(checked_id))
        print(checked_id)
        if checked_id == []:
            messages.warning(request, "You Haven't Chose Any Files!")
        else:
            response = HttpResponse(content_type='application/zip')
            # print(response)
            zip_file = zipfile.ZipFile(response, 'w')
            for idx in checked_id:
                obj = Upload.objects.get(pk=idx).brain_file
                print(obj.name)
                zip_file.write(obj.path)
            response['Content-Disposition'] = 'attachment; filename=dyslexia_data'
            zip_file.close()
            messages.success(request, "Download Successfully!")
            # response =response.streaming
            return response
        # return redirect('users-download')

    context = {
        'data': Upload.objects.all().order_by('-date_uploaded'),
        'datalink': response,
    }
    return render(request, 'users/download.html', context)

