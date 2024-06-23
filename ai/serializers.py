from rest_framework import serializers

from ai.models import UserPreference


class UserPreferenceSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserPreference
        fields = ['user', 'experience_description', 'starting_address']