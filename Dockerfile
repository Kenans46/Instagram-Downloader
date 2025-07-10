FROM php:8.2-apache

# نسخ كل ملفات المشروع إلى مجلد السيرفر
COPY . /var/www/html/

# إعطاء صلاحيات
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80
