from django.db import models

class TaskPlanned(models.Model):
    class Priority(models.IntegerChoices):
        Low = 1, "Low"
        Medium = 2, "Medium"
        High = 3, "High"
        Critical = 4, "Critical"

    Title = models.CharField(max_length=100)
    Description = models.TextField()
    Deadline = models.DateField()
    Priority = models.IntegerField(choices=Priority.choices, default=Priority.Medium)