from django.contrib.auth.models import User, Group
from rest_framework import serializers
from .models import Stations, Results


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']


class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ['url', 'name']


class StationsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Stations
        fields = ['organizationidentifier', 'organizationformalname', 'monitoringlocationidentifier', 'monitoringlocationname']


class ResultsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Results
        fields = ['characteristicname', 'resultmeasurevalue']
