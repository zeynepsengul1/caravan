from django.shortcuts import get_object_or_404
from django.utils import timezone
from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema
from rest_framework import status, viewsets, permissions
from rest_framework.permissions import AllowAny
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView

from parkingarea.models import ParkingArea
from parkingarea.serializers import ParkingAreaSerializer


class ParkingAreas(APIView):
    """
    List of ParkingAreas

    Return a list of all ParkingAreas from the database.

    Optional query parameters:
    - recent: If "true", return only the 4 most recent ParkingAreas.
    """

    @swagger_auto_schema(responses={200: ParkingAreaSerializer(many=True)})
    def get(self, request, *args, **kwargs):
        recent = request.query_params.get('recent')
        queryset = ParkingArea.public_objects.filter(available=True)
        if recent == 'true':
            queryset = queryset[:4]

        serializer = ParkingAreaSerializer(queryset, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    @swagger_auto_schema(
        request_body=ParkingAreaSerializer,
        responses={200: ParkingAreaSerializer(), 400: "Bad Request"}
    )
    def post(self, request: Request):
        request.data['is_public'] = False
        request.data['tags'] = []  # Assuming tags is a list field
        request.data['created_at'] = timezone.now()  # Set current time
        request.data['available'] = True  # Set available to True by default
        request.data['author'] = request.user.id

        serializer = ParkingAreaSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save(author_id=request.user.id)
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class ParkingAreasDetail(APIView):
    """
    Detailed ParkingAreas

    Return a detailed information about a **ParkingAreas** with given ``slug``.
    """

    @swagger_auto_schema(responses={200: ParkingAreaSerializer(), 404: openapi.Response(description='Not Found')})
    def get(self, request: Request, slug: str, format=None):
        parking_area = get_object_or_404(ParkingArea, slug=slug)
        data = ParkingAreaSerializer(parking_area).data
        return Response(data, status=status.HTTP_200_OK)


class RentParkingArea(APIView):
    """
    Detailed ParkingArea

    lend ParkingArea
    """

    @swagger_auto_schema(responses={200: AllowAny(), 404: openapi.Response(description='Not Found')})
    def get(self, request: Request, slug: str, format=None):
        parkingarea = get_object_or_404(ParkingArea, slug=slug)
        data = ParkingAreaSerializer(parkingarea).data
        return Response(data, status=status.HTTP_200_OK)

    @swagger_auto_schema(responses={200: AllowAny(), 404: openapi.Response(description='Not Found')})
    def post(self, request: Request, slug: str, format=None):
        parkingarea = get_object_or_404(ParkingArea, slug=slug)
        print(request.data.get('startDate'))
        parkingarea.rental_start = request.data.get('startDate')
        parkingarea.rental_end = request.data.get('endDate')
        parkingarea.available = False
        parkingarea.save()
        return Response("success", status=status.HTTP_200_OK)
