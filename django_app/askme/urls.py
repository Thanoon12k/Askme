
from django.contrib import admin
from django.urls import path
from .veiws import sayhi
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', sayhi),
    
]
