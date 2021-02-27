from rest_framework import viewsets
from rest_framework import permissions
from .models import Stations, Results
from .serializers import StationsSerializer, ResultsSerializer

class StationsViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows Stations to be viewed or edited.
    """
    queryset = Stations.objects.all()
    serializer_class = StationsSerializer
    permission_classes = [permissions.IsAuthenticated]

class ResultsViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows Results to be viewed or edited.
    """
    queryset = Results.objects.all()
    serializer_class = ResultsSerializer
    permission_classes = [permissions.IsAuthenticated]
