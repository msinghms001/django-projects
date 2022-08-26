from django.shortcuts import render,HttpResponse

# Create your views here.


def base_v1(request):
    return HttpResponse("<h1>BASE_home</h1>")