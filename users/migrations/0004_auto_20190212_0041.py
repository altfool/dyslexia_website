# Generated by Django 2.1.5 on 2019-02-12 00:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0003_upload'),
    ]

    operations = [
        migrations.AlterField(
            model_name='upload',
            name='name',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='upload',
            name='sample_age',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='upload',
            name='size',
            field=models.IntegerField(null=True),
        ),
    ]