from django.urls import path
from . import views as user_views
from django.contrib.auth import views as auth_views
from django.contrib.auth.decorators import login_required

urlpatterns = [
    path('register/', user_views.register, name='users-register'),
    path('login/', auth_views.LoginView.as_view(template_name='users/login.html'), name='users-login'),
    path('logout/', auth_views.LogoutView.as_view(template_name='users/logout.html'), name='users-logout'),
    path('profile/', user_views.profile, name='users-profile'),
    path('dataset/', user_views.dataset, name='users-dataset'),
    # path('upload/', user_views.upload, name='users-upload'),
    path('upload/', login_required(user_views.UploadView.as_view()), name='users-upload'),
    path('download/', user_views.download, name='users-download'),
]
