from rest_framework import viewsets
from rest_framework import permissions
from django_filters.rest_framework import DjangoFilterBackend
from .models import Stations, Results
from .serializers import StationsSerializer, ResultsSerializer

class StationsViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows Stations to be viewed or edited.
    """
    serializer_class = StationsSerializer
    permission_classes = [permissions.IsAuthenticated]
    queryset = Stations.objects.all()
    filter_backends = [DjangoFilterBackend]
    filter_fields = ('countycode', 'statecode')
class ResultsViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows Results to be viewed or edited.
    """
    queryset = Results.objects.all()
    serializer_class = ResultsSerializer
    permission_classes = [permissions.IsAuthenticated]
