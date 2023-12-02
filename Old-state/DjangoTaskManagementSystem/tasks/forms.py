from django import forms
from django.contrib.auth.forms import PasswordChangeForm
from .models import TaskPlanned

class UpdateEmailForm(forms.Form):
    email = forms.EmailField(required=True, widget=forms.EmailInput(attrs={'placeholder': 'New Email Address'}))

class DeleteAccountForm(forms.Form):
    confirm_delete = forms.BooleanField(help_text="Check to confirm account deletion", required=True)

class TaskForm(forms.ModelForm):
    class Meta:
        model = TaskPlanned
        fields = ['title', 'description', 'deadline', 'priority']

    def __init__(self, *args, **kwargs):
        super(TaskForm, self).__init__(*args, **kwargs)
        self.fields['title'].widget.attrs['placeholder'] = 'Enter title here'
        self.fields['description'].widget.attrs['placeholder'] = 'Enter description here'
        self.fields['deadline'].widget = forms.DateInput(attrs={"type": "date"})
