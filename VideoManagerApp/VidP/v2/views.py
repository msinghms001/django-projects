from django.shortcuts import render,HttpResponse

# Create your views here.

def say(request):
    return render(request,'v2/index.html')