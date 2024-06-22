from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from parkingarea.views import ParkingAreasDetail, ParkingAreas, RentParkingArea, CommentListCreateAPIView

urlpatterns = [
    path('', ParkingAreas.as_view()),
    path('<slug:slug>/', ParkingAreasDetail.as_view()),
    path('<slug:slug>/rent', RentParkingArea.as_view()),
    path('<slug:slug>/comments/', CommentListCreateAPIView.as_view()),
    ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
