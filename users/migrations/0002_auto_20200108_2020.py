# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2020-01-08 20:20
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='user_institution',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='profile',
            name='user_purpose',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
