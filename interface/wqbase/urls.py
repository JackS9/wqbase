from django.urls import path, include
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'stations', views.StationsViewSet)
router.register(r'results', views.ResultsViewSet)

urlpatterns = [
    path('', include(router.urls))
]