# Generated by Django 2.2.5 on 2019-11-28 14:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('health', '0014_remove_tbl_lab_test_request_patient_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='tbl_lab_test_request',
            name='opticket_id',
            field=models.CharField(default='nul', max_length=30),
            preserve_default=False,
        ),
    ]
