from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.http import HttpResponseRedirect, HttpResponse

def hello(request):
    return HttpResponse('Hello Django')
