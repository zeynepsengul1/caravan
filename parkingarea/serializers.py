from rest_framework import serializers
from users.serializers import UserSerializer

from parkingarea.models import ParkingArea, Tag


class TagSerializer(serializers.ModelSerializer):

    class Meta:
        model = Tag
        fields = ['id', 'name']


class ParkingAreaSerializer(serializers.ModelSerializer):

    author = UserSerializer(read_only=True)
    tags = TagSerializer(read_only=True, many=True)
    # title = serializers.CharField(allow_blank=True)
    class Meta:
        model = ParkingArea
        fields = ['title', 'slug', 'author', 'thumbnail',
                  'description', 'tags', 'created_at', 'rental_start', 'rental_end','price','available','contact','address']
        read_only_fields = ['author']
