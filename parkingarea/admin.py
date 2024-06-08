from django.contrib import admin, messages
from django_summernote.admin import SummernoteModelAdmin

from parkingarea.models import ParkingArea, Tag


@admin.register(ParkingArea)
class ParkingAreaAdmin(SummernoteModelAdmin):
    summernote_fields = ('description',)
    list_display = ('title', 'id', 'is_public', 'slug',
                    'author', 'edited_at', 'created_at', 'rental_start', 'rental_end','available','contact','address')
    list_filter = ('is_public', 'available', 'rental_start', 'rental_end',)
    search_fields = ['title', 'slug', 'author']
    prepopulated_fields = {'slug': ('title',)}
    actions = ['make_public', 'make_unpublic', 'make_available', 'make_unavailable']

    def get_queryset(self, request):
        # Use the default manager to ensure all ParkingArea instances are returned
        return super().get_queryset(request).all()
    def make_public(modeladmin, request, queryset):
        queryset.update(is_public=True)
        messages.success(
            request, 'Selected Parking area(s) are now public !')

    def make_unpublic(modeladmin, request, queryset):
        queryset.update(is_public=False)
        messages.success(
            request, 'Selected Parking area(s) are no longer public!')

    def make_available(modeladmin, request, queryset):
        queryset.update(available=True)
        messages.success(
            request, 'Selected Parking area(s) are now available !')

    def make_unavailable(modeladmin, request, queryset):
        queryset.update(available=False)
        messages.success(
            request, 'Selected Parking area(s) are no longer available!')


@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    list_display = ('name', 'id')
    list_filter = ('name',)
    search_fields = ('name',)

