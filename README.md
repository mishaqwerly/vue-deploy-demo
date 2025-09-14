# 🚀 Vue Deploy Demo

Простий Vue.js додаток з автоматичним деплоєм через GitHub Actions та Docker.

## ✨ Особливості

- Vue 3 + Composition API
- Vue Router для навігації
- Pinia для управління станом
- Docker контейнеризація
- Multi-stage Docker build
- CI/CD з GitHub Actions
- Автоматичний деплой на сервер

## 🛠️ Локальна розробка

### Вимоги
- Node.js 18+
- Docker
- Git

### Запуск

```bash
# Встановлення залежностей
npm install

# Розробка
npm run dev

# Збірка
npm run build

# Тестування
npm run test:unit
```

### Docker

```bash
# Збірка образу
docker build -t vue-app .

# Запуск контейнера
docker run -p 8080:80 vue-app

# Docker Compose
docker compose up -d
```

## 🚀 Деплой

### 1. Створення репозиторію на GitHub

1. Створіть новий репозиторій на GitHub
2. Додайте remote:
```bash
git remote add origin https://github.com/yourusername/vue-deploy-demo.git
git branch -M main
git push -u origin main
```

### 2. Налаштування GitHub Secrets

Додайте наступні secrets в Settings > Secrets and variables > Actions:

- `DOCKER_USERNAME` - ваш Docker Hub username
- `DOCKER_PASSWORD` - ваш Docker Hub password
- `SERVER_HOST` - IP адреса сервера
- `SERVER_USER` - користувач сервера
- `SERVER_SSH_KEY` - приватний SSH ключ

### 3. Налаштування сервера

```bash
# Встановлення Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Клонування репозиторію
git clone https://github.com/yourusername/vue-deploy-demo.git
cd vue-deploy-demo

# Створення папки для додатку
sudo mkdir -p /var/www/vue-app
sudo chown $USER:$USER /var/www/vue-app
```

### 4. Автоматичний деплой

При кожному push в main гілку:
1. GitHub Actions автоматично збирає додаток
2. Створює Docker образ
3. Пушить образ в Docker Hub
4. Деплоїть на сервер через SSH

## 📁 Структура проекту

```
vue-deploy-demo/
├── .github/workflows/    # GitHub Actions
├── src/                  # Vue додаток
├── public/               # Статичні файли
├── Dockerfile            # Docker конфігурація
├── docker-compose.yml    # Docker Compose
├── nginx.conf           # Nginx конфігурація
└── README.md            # Документація
```

## 🔧 Налаштування

### Змінні середовища

Створіть `.env` файл:
```env
VITE_APP_TITLE=Vue Deploy Demo
VITE_API_URL=https://api.example.com
```

### Nginx конфігурація

Файл `nginx.conf` налаштований для:
- SPA роутингу
- Gzip стиснення
- Кешування статичних файлів
- Безпеки

## 📚 Корисні команди

```bash
# Розробка
npm run dev

# Збірка
npm run build

# Preview збірки
npm run preview

# Лінт
npm run lint

# Форматування
npm run format

# Docker
docker build -t vue-app .
docker run -p 8080:80 vue-app

# Docker Compose
docker compose up -d
docker compose down
```

## 🌐 Доступ до додатку

- Локально: http://localhost:5173
- Docker: http://localhost:8080
- Production: http://your-server-ip

## 🤝 Внесок

1. Fork репозиторій
2. Створіть feature гілку
3. Зробіть зміни
4. Створіть Pull Request

## 📄 Ліцензія

MIT License
