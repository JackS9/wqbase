
from django.urls import path

from . import views

urlpatterns = [
    path('', views.wqbcsvdata, name='wqbcsvdata')
]
