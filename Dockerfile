# Dockerfile

FROM php:8.2-fpm

# Instalar dependencias del sistema y extensiones de PHP para Laravel y PostgreSQL
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Instalar Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

COPY . .

RUN composer install --no-interaction --no-plugins --no-scripts

# Exponer el puerto que usará php artisan serve
EXPOSE 8000

# Comando para iniciar el servidor de Laravel
CMD php artisan serve --host=0.0.0.0 --port=8000