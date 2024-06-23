from rest_framework import serializers
from users.serializers import UserSerializer

from parkingarea.models import ParkingArea, Tag, Comment


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
                  'description', 'tags', 'created_at', 'price', 'available', 'contact', 'address', 'is_public']
        read_only_fields = ['is_public']


class CommentSerializer(serializers.ModelSerializer):
    user = UserSerializer(read_only=True)
    parking_area = ParkingAreaSerializer(read_only=True)
    class Meta:
        model = Comment
        fields = ['text', 'created_at', 'parking_area', 'user']

class CommentCreateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ['text', 'parking_area', 'user']

    def create(self, validated_data):
        user = validated_data.pop('user')
        parking_area = validated_data.pop('parking_area')
        comment = Comment.objects.create(user=user, parking_area=parking_area, **validated_data)
        return comment

