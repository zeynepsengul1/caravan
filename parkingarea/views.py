from datetime import datetime
from zoneinfo import available_timezones

from django.shortcuts import get_object_or_404
from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema
from rest_framework import status
from rest_framework.generics import ListAPIView
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView

from parkingarea.models import ParkingArea
from parkingarea.serializers import ParkingAreaSerializer
from posts.models import Post
from posts.serializers import PostSerializer
from rest_framework.permissions import AllowAny, IsAuthenticated


class ParkingAreasList(ListAPIView):
    """
    List of Posts

    Return a list of all **Posts** from database.

    Optional query parameters:\n
    ``recent`` - If ``true`` return only the **4** most recent **Posts**.
    """
    serializer_class = ParkingAreaSerializer

    def get_queryset(self):
        recent = self.request.query_params.get('recent')
        if recent == 'true':
            return  ParkingArea.objects.filter(available=True)[:4]

        return  ParkingArea.objects.filter(available=True)

    @swagger_auto_schema(responses={200: ParkingAreaSerializer(many=True)})
    def get(self, request, *args, **kwargs):
        return  self.list(request, *args, **kwargs)


class ParkingAreasDetail(APIView):
    """
    Detailed Post

    Return a detailed information about a **Post** with given ``slug``.
    """
    @swagger_auto_schema(responses={200: ParkingAreaSerializer(), 404: openapi.Response(description='Not Found')})
    def get(self, request: Request, slug: str, format=None):
        parking_area = get_object_or_404(ParkingArea, slug=slug)
        data = ParkingAreaSerializer(parking_area).data
        return Response(data, status=status.HTTP_200_OK)

from datetime import datetime
from zoneinfo import available_timezones

from django.shortcuts import get_object_or_404
from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema
from rest_framework import status
from rest_framework.generics import ListAPIView
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.views import APIView

from posts.models import Post
from posts.serializers import PostSerializer
from rest_framework.permissions import AllowAny, IsAuthenticated


class PostsList(ListAPIView):
    """
    List of Posts

    Return a list of all **Posts** from database.

    Optional query parameters:\n
    ``recent`` - If ``true`` return only the **4** most recent **Posts**.
    """
    serializer_class = PostSerializer

    def get_queryset(self):
        recent = self.request.query_params.get('recent')
        if recent == 'true':
            return  Post.objects.filter(available=True)[:4]

        return  Post.objects.filter(available=True)

    @swagger_auto_schema(responses={200: PostSerializer(many=True)})
    def get(self, request, *args, **kwargs):
        return  self.list(request, *args, **kwargs)


class PostDetail(APIView):
    """
    Detailed Post

    Return a detailed information about a **Post** with given ``slug``.
    """
    @swagger_auto_schema(responses={200: PostSerializer(), 404: openapi.Response(description='Not Found')})
    def get(self, request: Request, slug: str, format=None):
        post = get_object_or_404(Post, slug=slug)
        data = PostSerializer(post).data
        return Response(data, status=status.HTTP_200_OK)

class RentParkingArea(APIView):
    """
    Detailed Post

    lend car
    """
    @swagger_auto_schema(responses={200: AllowAny(), 404: openapi.Response(description='Not Found')})
    def get(self, request: Request, slug: str, format=None):
        parking_area = get_object_or_404(ParkingArea, slug=slug)
        data = ParkingAreaSerializer(parking_area).data
        return Response(data, status=status.HTTP_200_OK)
    @swagger_auto_schema(responses={200: AllowAny(), 404: openapi.Response(description='Not Found')})
    def post(self, request: Request, slug: str, format=None):
        parking_area = get_object_or_404(ParkingArea, slug=slug)
        print(request.data.get('startDate'))
        parking_area.rental_start =request.data.get('startDate')
        parking_area.rental_end =request.data.get('endDate')
        parking_area.available =False
        parking_area.save()
        return Response("success",status=status.HTTP_200_OK)
