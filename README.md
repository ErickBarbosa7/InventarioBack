# 🗄️ Inventario Backend - Laravel API

Este es el backend de la aplicación de Inventario, construido con **Laravel 10**, **PostgreSQL** y **Docker**. Expone una API RESTful que permite gestionar productos, usuarios, categorías y más.

---

## 🚀 Tecnologías

- PHP 8.2
- Laravel 10
- PostgreSQL 15
- Docker & Docker Compose
- Composer

---

## 📦 Requisitos

- Docker
- Docker Compose
- Git

---

## 🛠️ Instalación y ejecución

1. Clona el repositorio:

```bash
git clone https://github.com/ErickBarbosa7/InventarioBack.git
cd InventarioBack
cp .env.example .env
docker-compose up -d --build
docker-compose exec app bash
php artisan migrate --seed
