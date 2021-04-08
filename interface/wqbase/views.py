from rest_framework import viewsets
from rest_framework import permissions
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import filters
from .models import Stations, Results
from .serializers import StationsSerializer, ResultsSerializer

class StationsViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows Stations to be viewed or edited.
    """
    queryset = Stations.objects.all()   
    serializer_class = StationsSerializer
    permission_classes = [permissions.IsAuthenticated]
    filter_backends = [DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = [  # Could have used '__all__'
        'organizationidentifier', 
        'organizationformalname', 
        'monitoringlocationidentifier', 
        'monitoringlocationname', 
        'monitoringlocationtypename', 
        'monitoringlocationdescriptiontext', 
        'huceightdigitcode', 
        'drainageareameasure_measurevalue', 
        'drainageareameasure_measureunitcode', 
        'contributingdrainageareameasure_measurevalue', 
        'contributingdrainageareameasure_measureunitcode', 
        'latitudemeasure', 
        'longitudemeasure', 
        'sourcemapscalenumeric', 
        'horizontalaccuracymeasure_measurevalue', 
        'horizontalaccuracymeasure_measureunitcode', 
        'horizontalcollectionmethodname', 
        'horizontalcoordinatereferencesystemdatumname', 
        'verticalmeasure_measurevalue', 
        'verticalmeasure_measureunitcode', 
        'verticalaccuracymeasure_measurevalue', 
        'verticalaccuracymeasure_measureunitcode', 
        'verticalcollectionmethodname', 
        'verticalcoordinatereferencesystemdatumname', 
        'countrycode', 
        'statecode', 
        'countycode', 
        'aquifername', 
        'formationtypetext', 
        'aquifertypename', 
        'constructiondatetext', 
        'welldepthmeasure_measurevalue', 
        'welldepthmeasure_measureunitcode', 
        'wellholedepthmeasure_measurevalue', 
        'wellholedepthmeasure_measureunitcode', 
        'providername'
    ]
    search_fields = ['organizationformalname', 'monitoringlocationname']
    ordering_fields = ['organizationidentifier', 'monitoringlocationidentifier', 'statecode', 'countycode', 'providername']
    ordering = ['organizationidentifier', 'monitoringlocationidentifier']
class ResultsViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows Results to be viewed or edited.
    """
    queryset = Results.objects.all()
    serializer_class = ResultsSerializer
    permission_classes = [permissions.IsAuthenticated]
    filter_backends = [DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter]
    filterset_fields = [
        'organizationidentifier',
        'organizationformalname',
        'activityidentifier',
        'activitytypecode',
        'activitymedianame',
        'activitymediasubdivisionname',
        'activitystartdate',
        'activitystarttime_time',
        'activitystarttime_timezonecode',
        'activityenddate',
        'activityendtime_time',
        'activityendtime_timezonecode',
        'activitydepthheightmeasure_measurevalue',
        'activitydepthheightmeasure_measureunitcode',
        'activitydepthaltitudereferencepointtext',
        'activitytopdepthheightmeasure_measurevalue',
        'activitytopdepthheightmeasure_measureunitcode',
        'activitybottomdepthheightmeasure_measurevalue',
        'activitybottomdepthheightmeasure_measureunitcode',
        'projectidentifier',
        'activityconductingorganizationtext',
        'monitoringlocationidentifier',
        'activitycommenttext',
        'sampleaquifer',
        'hydrologiccondition',
        'hydrologicevent',
        'samplecollectionmethod_methodidentifier',
        'samplecollectionmethod_methodidentifiercontext',
        'samplecollectionmethod_methodname',
        'samplecollectionequipmentname',
        'resultdetectionconditiontext',
        'characteristicname',
        'resultsamplefractiontext',
        'resultmeasurevalue',
        'resultmeasure_measureunitcode',
        'measurequalifiercode',
        'resultstatusidentifier',
        'statisticalbasecode',
        'resultvaluetypename',
        'resultweightbasistext',
        'resulttimebasistext',
        'resulttemperaturebasistext',
        'resultparticlesizebasistext',
        'precisionvalue',
        'resultcommenttext',
        'usgspcode',
        'resultdepthheightmeasure_measurevalue',
        'resultdepthheightmeasure_measureunitcode',
        'resultdepthaltitudereferencepointtext',
        'subjecttaxonomicname',
        'sampletissueanatomyname',
        'resultanalyticalmethod_methodidentifier',
        'resultanalyticalmethod_methodidentifiercontext',
        'resultanalyticalmethod_methodname',
        'methoddescriptiontext',
        'laboratoryname',
        'analysisstartdate',
        'resultlaboratorycommenttext',
        'detectionquantitationlimittypename',
        'detectionquantitationlimitmeasure_measurevalue',
        'detectionquantitationlimitmeasure_measureunitcode',
        'preparationstartdate',
        'providername'
    ]
    search_fields = ['organizationformalname', 'monitoringlocationidentifier', 'activityenddate', 'activitymedianame', 
        'projectidentifier', 'characteristicname', 'usgspcode', 'laboratoryname', 'providername']
    ordering_fields = ['organizationformalname', 'monitoringlocationidentifier', 'activityenddate', 'activitymedianame', 
        'projectidentifier', 'characteristicname', 'usgspcode', 'laboratoryname', 'providername']
    ordering = ['monitoringlocationidentifier', 'activityenddate']
