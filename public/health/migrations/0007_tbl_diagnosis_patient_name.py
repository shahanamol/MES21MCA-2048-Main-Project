# Generated by Django 2.2.5 on 2019-10-24 07:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('health', '0006_tbl_treatment_patient_name'),
    ]

    operations = [
        migrations.AddField(
            model_name='tbl_diagnosis',
            name='patient_name',
            field=models.CharField(default='null', max_length=30),
            preserve_default=False,
        ),
    ]