from django.shortcuts import render
from .models import TaskPlanned

def task_list(request):
    tasks = TaskPlanned.objects.all()
    return render(request, 'task_list.html', {'tasks': tasks})

def error_view(request):
    context = {
        'RequestId': 'SomeID',
        'ErrorMessage': 'An error occurred.'
    }
    return render(request, 'error_template.html', context)

def home_view(request):
    return render(request, 'home.html')

def privacy_view(request):
    return render(request, 'privacy.html')