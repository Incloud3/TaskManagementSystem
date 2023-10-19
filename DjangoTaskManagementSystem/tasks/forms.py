from django import forms
from django.contrib.auth.forms import PasswordChangeForm

class UpdateEmailForm(forms.Form):
    email = forms.EmailField(required=True, widget=forms.EmailInput(attrs={'placeholder': 'New Email Address'}))

class DeleteAccountForm(forms.Form):
    confirm_delete = forms.BooleanField(help_text="Check to confirm account deletion", required=True)
