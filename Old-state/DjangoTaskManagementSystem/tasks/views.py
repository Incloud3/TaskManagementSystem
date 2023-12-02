from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.forms import UserCreationForm, PasswordChangeForm
from django.contrib.auth import login, update_session_auth_hash
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import TaskPlanned
from .forms import *

@login_required
def task_list(request):
    tasks = TaskPlanned.objects.filter(user=request.user)
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

def register_view(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            messages.success(request, "Registration successful!")
            return redirect('home')
        else:
            messages.error(request, "Unsuccessful registration. Invalid information.")
    else:
        form = UserCreationForm()

    return render(request, 'register.html', context={"register_form": form})

@login_required
def profile_view(request):
    user = request.user
    password_form = PasswordChangeForm(user)
    email_form = UpdateEmailForm(initial={'email': user.email})
    delete_form = DeleteAccountForm()

    if request.method == "POST":
        if 'update_email' in request.POST:
            email_form = UpdateEmailForm(request.POST)
            if email_form.is_valid():
                user.email = email_form.cleaned_data['email']
                user.save()
                messages.success(request, "Email updated successfully!")

        elif 'change_password' in request.POST:
            password_form = PasswordChangeForm(user, request.POST)
            if password_form.is_valid():
                user = password_form.save()
                update_session_auth_hash(request, user)
                messages.success(request, "Password changed successfully!")

        elif 'delete_account' in request.POST:
            delete_form = DeleteAccountForm(request.POST)
            if delete_form.is_valid() and delete_form.cleaned_data['confirm_delete']:
                user.delete()
                messages.success(request, "Account deleted.")
                return redirect('/')

    context = {
        'password_form': password_form,
        'email_form': email_form,
        'delete_form': delete_form,
    }
    return render(request, 'profile.html', context)


def create_task(request):
    if request.method == 'POST':
        form = TaskForm(request.POST)
        if form.is_valid():
            task = form.save(commit=False)
            task.user = request.user
            task.save()
            return redirect('task_list')
    else:
        form = TaskForm()

    return render(request, 'create_task.html', {'form': form})


def delete_task(request, task_id):
    task = get_object_or_404(TaskPlanned, id=task_id)

    if task.user != request.user:
        messages.error(request, "You do not have permission to access this task.")
        return redirect('forbidden')

    if request.method == "POST":
        task.delete()
        return redirect('task_list')
    return render(request, 'delete_task_confirm.html', {'task': task})

def edit_task(request, task_id):
    task = get_object_or_404(TaskPlanned, id=task_id)

    if task.user != request.user:
        messages.error(request, "You do not have permission to access this task.")
        return redirect('forbidden')

    if request.method == "POST":

        form = TaskForm(request.POST, instance=task)
        if form.is_valid():
            form.save()
            return redirect('task_list')
    else:
        form = TaskForm(instance=task)
    return render(request, 'edit_task.html', {'form': form, 'task': task})

def forbidden_view(request):
    context = {
        'error_message': "You don't have permission to access this resource."
    }
    return render(request, 'forbidden.html', context)
