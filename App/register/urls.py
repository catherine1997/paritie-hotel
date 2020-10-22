from django.conf.urls import path
from . import views

urlpatterns = [
	path('api/register/', views.UserCreate.as_view(), name = 'register-create'),
	]