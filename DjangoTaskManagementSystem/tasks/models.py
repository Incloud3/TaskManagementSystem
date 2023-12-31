from django.db import models
from django.contrib.auth.models import User

class TaskPlanned(models.Model):
    class Priority(models.IntegerChoices):
        Low = 1, "Low"
        Medium = 2, "Medium"
        High = 3, "High"
        Critical = 4, "Critical"

    title = models.CharField(max_length=100)
    description = models.TextField()
    deadline = models.DateField()
    priority = models.IntegerField(choices=Priority.choices, default=Priority.Medium)
    user = models.ForeignKey(User, on_delete=models.CASCADE)