from django.shortcuts import render,HttpResponse

# Create your views here.


def api_v1(request):
    return HttpResponse("<h1>API_home</h1>")