# Generated by Django 2.2.5 on 2019-10-28 06:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('health', '0009_auto_20191025_1241'),
    ]

    operations = [
        migrations.AddField(
            model_name='tbl_patient',
            name='pat_age',
            field=models.CharField(default='50', max_length=30),
            preserve_default=False,
        ),
    ]