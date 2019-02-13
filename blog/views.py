from django.shortcuts import render
from django.http import HttpResponse
from .models import Post

# Create your views here.

def home(request):
    context = {
        'posts': Post.objects.all()
    }
    # return render(request, 'blog/home_posts.html', context)
    return render(request, 'blog/home.html')

def about(request):
    return render(request, 'blog/about.html', {'title': 'about'})

def contact(request):
    return render(request, 'blog/contact.html')
