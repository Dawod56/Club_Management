# Generated by Django 3.1.1 on 2021-01-09 10:07

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Carousel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='carousel/%y.%m')),
                ('image_name', models.CharField(max_length=100)),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('status', models.BooleanField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='ContactUs',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=100)),
                ('phone', models.CharField(max_length=20)),
                ('comment', models.TextField(max_length=50000)),
                ('visited', models.BooleanField(default=False)),
                ('date', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('event_type', models.CharField(blank=True, choices=[('Pysical_Event', 'Pysical_Event'), ('Online_Event', 'Online_Event'), ('Fund_Raising_Event', 'Fund_Raising_Event')], default='Pysical_Event', max_length=100, null=True)),
                ('event_location', models.CharField(blank=True, max_length=500, null=True)),
                ('event_platform', models.CharField(blank=True, max_length=100, null=True)),
                ('target_amount', models.CharField(blank=True, default=0, max_length=20, null=True)),
                ('current_amount', models.CharField(blank=True, default=0, max_length=20, null=True)),
                ('online_event_link', models.URLField(blank=True, max_length=1000, null=True)),
                ('event_name', models.CharField(max_length=100)),
                ('date', models.DateTimeField()),
                ('participation_fee', models.CharField(blank=True, default=0, max_length=100, null=True)),
                ('description', models.TextField(max_length=10000)),
                ('facebook_link', models.URLField(blank=True, null=True)),
                ('youtube_link', models.URLField(blank=True, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='event/%m.%y')),
                ('contact_number', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Fund',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('current_balance', models.IntegerField(blank=True, default=0.0, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Notice',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=500)),
                ('image', models.ImageField(blank=True, null=True, upload_to='notice/%m.%y')),
                ('text', models.CharField(blank=True, max_length=20000)),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('file', models.FileField(blank=True, null=True, upload_to='notice/%m.%y')),
                ('registration_link', models.URLField(blank=True, null=True)),
                ('facebook_link', models.URLField(blank=True, null=True)),
                ('youtube_link', models.URLField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='PhotoGallery',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image_caption', models.CharField(max_length=100)),
                ('image', models.ImageField(upload_to='gallery/%y.%m')),
                ('home_visibility_status', models.BooleanField(default=False)),
                ('category', models.CharField(default='home', max_length=100)),
                ('category_visible', models.BooleanField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='Resource',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file_name', models.CharField(blank=True, max_length=100, null=True)),
                ('file', models.FileField(blank=True, null=True, upload_to='resource/file/%y.%m')),
                ('file_cover_photo', models.ImageField(blank=True, null=True, upload_to='resource/%y.%m')),
                ('file_type', models.CharField(choices=[('PDF', 'PDF'), ('Video', 'Video'), ('Tutorials', 'Tutorials'), ('Others', 'Others')], max_length=100)),
                ('file_drive_link', models.URLField(blank=True, max_length=5000, null=True)),
                ('file_youtube_link', models.URLField(blank=True, max_length=5000, null=True)),
                ('file_tag', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Settings',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('org_full_name', models.CharField(blank=True, max_length=100, null=True)),
                ('org_nickname', models.CharField(blank=True, max_length=100, null=True)),
                ('org_mail', models.EmailField(blank=True, max_length=254, null=True)),
                ('org_institution', models.CharField(blank=True, max_length=100, null=True)),
                ('org_fb_link', models.URLField(blank=True, max_length=500, null=True)),
                ('org_linkedin_link', models.URLField(blank=True, max_length=500, null=True)),
                ('org_youtube_link', models.URLField(blank=True, max_length=500, null=True)),
                ('org_icon_image', models.ImageField(blank=True, null=True, upload_to='settings/%m.%y')),
                ('org_location', models.CharField(blank=True, max_length=1000, null=True)),
                ('org_contact_number', models.CharField(blank=True, max_length=20, null=True)),
                ('org_homepage_description', models.TextField(blank=True, max_length=20000, null=True)),
                ('org_map_location', models.URLField(blank=True, max_length=5000, null=True)),
                ('org_active_session', models.CharField(blank=True, max_length=30, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(blank=True, max_length=200, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='users/%y.%m/')),
                ('university_or_institute', models.CharField(blank=True, max_length=200, null=True)),
                ('discipline', models.CharField(blank=True, max_length=200, null=True)),
                ('batch', models.CharField(blank=True, max_length=200, null=True)),
                ('student_id', models.CharField(blank=True, max_length=200, null=True)),
                ('blood_group', models.CharField(blank=True, max_length=200, null=True)),
                ('contact_number', models.CharField(blank=True, max_length=200, null=True)),
                ('profession', models.CharField(blank=True, max_length=200, null=True)),
                ('hometown', models.CharField(blank=True, max_length=200, null=True)),
                ('current_city', models.CharField(blank=True, max_length=200, null=True)),
                ('fb_link', models.URLField(blank=True, null=True)),
                ('linkedin', models.URLField(blank=True, null=True)),
                ('user', models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Participate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.event')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Fee',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('feetype', models.CharField(choices=[('Monthly', 'Monthly'), ('Yearly', 'Yearly'), ('Occasionally', 'Occasionally')], default='Monthly', max_length=100)),
                ('amount', models.IntegerField(blank=True, default='0.00', null=True)),
                ('month', models.CharField(blank=True, choices=[('January', 'January'), ('February', 'February'), ('March', 'March'), ('April', 'April'), ('May', 'May'), ('June', 'June'), ('July', 'July'), ('August', 'August'), ('September', 'September'), ('October', 'October'), ('November', 'November'), ('December', 'December')], max_length=100, null=True)),
                ('year', models.CharField(blank=True, choices=[('2020', '2020'), ('2021', '2021'), ('2022', '2022'), ('2023', '2023'), ('2024', '2024'), ('2025', '2025'), ('2026', '2026'), ('2027', '2027'), ('2028', '2028'), ('2029', '2029'), ('2030', '2030'), ('2031', '2031')], max_length=10, null=True)),
                ('txnid', models.CharField(max_length=100, null=True)),
                ('recived', models.BooleanField(default=False)),
                ('status', models.CharField(blank=True, default='Pending', max_length=50, null=True)),
                ('method', models.CharField(blank=True, max_length=100, null=True)),
                ('depositdate', models.DateTimeField(auto_now_add=True)),
                ('member', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='org.profile')),
            ],
        ),
        migrations.CreateModel(
            name='Donation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now_add=True)),
                ('amount', models.CharField(blank=True, max_length=50, null=True)),
                ('transaction', models.CharField(blank=True, max_length=500, null=True)),
                ('verified', models.BooleanField(default=False)),
                ('event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.event')),
                ('user', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='About',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('designation', models.CharField(blank=True, choices=[('President', 'President'), ('Vise President', 'Vise President'), ('General Secretary', 'General Secretary'), ('Treasurer', 'Treasurer')], max_length=100, null=True)),
                ('active_session', models.CharField(blank=True, choices=[('2020-2021', '2020-2021'), ('2021-2022', '2021-2022'), ('2022-2023', '2022-2023'), ('2023-2024', '2023-2024')], max_length=100, null=True)),
                ('designation_priority', models.IntegerField(blank=True, default=None, null=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='org.profile')),
            ],
        ),
    ]