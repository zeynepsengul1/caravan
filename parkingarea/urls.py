from django.urls import path

from parkingarea.views import ParkingAreasDetail, ParkingAreas, RentParkingArea

urlpatterns = [
    path('', ParkingAreas.as_view()),
    path('<slug:slug>/', ParkingAreasDetail.as_view()),
    path('<slug:slug>/rent', RentParkingArea.as_view()),
]
