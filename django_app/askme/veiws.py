# import requests
from django.shortcuts import render
def sayhi(request):
    return render(request,"hello.html")