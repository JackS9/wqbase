from rest_framework import serializers
from .models import Stations, Results

class StationsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Stations
        fields = ['organizationidentifier', 'organizationformalname', 'monitoringlocationidentifier', 'monitoringlocationname']


class ResultsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Results
        fields = ['characteristicname', 'resultmeasurevalue']
