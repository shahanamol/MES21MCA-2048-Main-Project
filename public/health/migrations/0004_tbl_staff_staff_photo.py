# Generated by Django 2.2.5 on 2019-10-15 14:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('health', '0003_tbl_mcpatient'),
    ]

    operations = [
        migrations.AddField(
            model_name='tbl_staff',
            name='staff_photo',
            field=models.CharField(default='nil', max_length=500),
            preserve_default=False,
        ),
    ]
