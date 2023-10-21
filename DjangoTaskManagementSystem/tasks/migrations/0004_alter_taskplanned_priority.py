# Generated by Django 4.2.6 on 2023-10-21 11:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0003_alter_taskplanned_user'),
    ]

    operations = [
        migrations.AlterField(
            model_name='taskplanned',
            name='Priority',
            field=models.CharField(choices=[('Low', 'Low'), ('Medium', 'Medium'), ('High', 'High')], default='Low', max_length=10),
        ),
    ]
