# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2020-01-29 19:14
from __future__ import unicode_literals

from django.db import migrations, models
import users.models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_auto_20200108_2023'),
    ]

    operations = [
        migrations.AlterField(
            model_name='upload',
            name='date_uploaded',
            field=models.DateTimeField(default=users.models.get_default_my_date),
        ),
    ]