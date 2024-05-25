from django.urls import path
from rest_framework.routers import DefaultRouter
from parkingarea.views import ParkingAreasDetail, ParkingAreas, RentParkingArea, ParkingAreaViewSet

urlpatterns = [
    path('', ParkingAreas.as_view()),
    path('<slug:slug>/', ParkingAreasDetail.as_view()),
    path('<slug:slug>/rent', RentParkingArea.as_view()),
]

router = DefaultRouter()
router.register(r'parkingareas', ParkingAreaViewSet)
