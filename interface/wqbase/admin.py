from django.contrib import admin

# Register your models here.

from .models import Stations, Results
admin.site.register(Stations)
admin.site.register(Results)
