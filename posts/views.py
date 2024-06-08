from datetime import datetime
from zoneinfo import available_timezones

from django.shortcuts import get_object_or_404
from django.utils import timezone
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


class Posts(APIView):
    """
    List of Posts

    Return a list of all **Posts** from database.

    Optional query parameters:\n
    ``recent`` - If ``true`` return only the **4** most recent **Posts**.
    """
    serializer_class = PostSerializer
    @swagger_auto_schema(responses={200: PostSerializer(many=True)})
    def get(self, request, *args, **kwargs):
        recent = request.query_params.get('recent')
        queryset = Post.public_objects.filter(available=True)
        if recent == 'true':
            queryset = queryset[:4]

        serializer = PostSerializer(queryset, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    @swagger_auto_schema(
        request_body=PostSerializer,
        responses={200: PostSerializer(), 400: "Bad Request"}
    )
    def post(self, request: Request):
        data = request.data.copy()
        request.data['is_public'] = False
        request.data['created_at'] = timezone.now()  # Set current time
        request.data['edited_at'] = timezone.now()  # Set current time
        request.data['available'] = True  # Set available to True by default
        request.data['author'] = request.user.id

        serializer = PostSerializer(data=data)
        if serializer.is_valid():
            serializer.save(author_id=request.user.id)
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
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

class RentPost(APIView):
    """
    Detailed Post

    lend car
    """
    @swagger_auto_schema(responses={200: AllowAny(), 404: openapi.Response(description='Not Found')})
    def get(self, request: Request, slug: str, format=None):
        post = get_object_or_404(Post, slug=slug)
        data = PostSerializer(post).data
        return Response(data, status=status.HTTP_200_OK)
    @swagger_auto_schema(responses={200: AllowAny(), 404: openapi.Response(description='Not Found')})
    def post(self, request: Request, slug: str, format=None):
        post = get_object_or_404(Post, slug=slug)
        print(request.data.get('startDate'))
        post.rental_start =request.data.get('startDate')
        post.rental_end =request.data.get('endDate')
        post.available =False
        post.save()
        return Response("success",status=status.HTTP_200_OK)
