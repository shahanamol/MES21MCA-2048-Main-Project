# Generated by Django 2.2.5 on 2019-11-29 15:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('health', '0016_remove_tbl_lab_test_result_patient_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='tbl_lab_test_result',
            name='opticket_id',
            field=models.CharField(default='nil', max_length=30),
            preserve_default=False,
        ),
    ]
