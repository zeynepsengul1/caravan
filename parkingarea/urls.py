from django.urls import path

from parkingarea.views import ParkingAreasDetail, ParkingAreasList ,RentParkingArea

urlpatterns = [
    path('', ParkingAreasList.as_view()),
    path('<slug:slug>/', ParkingAreasDetail.as_view()),
    path('<slug:slug>/rent', RentParkingArea.as_view()),
]
