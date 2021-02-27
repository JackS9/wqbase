from django.contrib import admin

# Register your models here.

from django.contrib import admin
from .models import Stations, Results
admin.site.register(Stations)
admin.site.register(Results)
