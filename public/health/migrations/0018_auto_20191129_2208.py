# Generated by Django 2.2.5 on 2019-11-29 16:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('health', '0017_tbl_lab_test_result_opticket_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tbl_notification',
            name='notification',
            field=models.CharField(max_length=900),
        ),
    ]
