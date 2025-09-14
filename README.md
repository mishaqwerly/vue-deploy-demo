# Vue Deploy Demo

Простий Vue.js додаток з налаштованим автоматичним деплоєм на Vercel.

## 🚀 Деплой

- **Production URL:** https://my-vue-deploy-ngu0k6jf2-mishaqwerlys-projects.vercel.app
- **GitHub Repository:** https://github.com/mishaqwerly/vue-deploy-demo

## 🔄 Автоматичний деплой

Після налаштування GitHub Integration в Vercel:
- Кожен push в `master` гілку автоматично деплоїть проект
- Vercel надає preview URL для кожного pull request

## 🛠 Локальна розробка

```bash
# Встановлення залежностей
npm install

# Запуск dev сервера
npm run dev

# Збірка для production
npm run build

# Локальний preview
npm run preview
```

## 📦 Docker

```bash
# Збірка Docker образу
docker build -t vue-deploy-app .

# Запуск контейнера
docker run -p 80:80 vue-deploy-app
```

## 🔧 Технології

- Vue 3 + Composition API
- Vite
- Vercel (деплой)
- GitHub Actions (CI/CD)
- Docker
- Nginx
