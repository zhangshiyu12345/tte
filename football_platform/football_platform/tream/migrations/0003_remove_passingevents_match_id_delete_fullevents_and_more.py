# Generated by Django 4.1.2 on 2022-10-30 07:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("tream", "0002_fullevents"),
    ]

    operations = [
        migrations.RemoveField(model_name="passingevents", name="match_id",),
        migrations.DeleteModel(name="FullEvents",),
        migrations.DeleteModel(name="PassingEvents",),
    ]