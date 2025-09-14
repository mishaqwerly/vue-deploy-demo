# ===========================================
# STAGE 1: Build - збираємо Vue додаток
# ===========================================
FROM node:20-alpine AS builder

WORKDIR /app

# Копіюємо package.json та package-lock.json
COPY package*.json ./

# Встановлюємо залежності
RUN npm ci

# Копіюємо вихідний код
COPY . .

# Збираємо додаток для production
RUN npm run build

# ===========================================
# STAGE 2: Production - Nginx для статичних файлів
# ===========================================
FROM nginx:alpine AS production

# Копіюємо зібраний додаток
COPY --from=builder /app/dist /usr/share/nginx/html

# Копіюємо конфігурацію Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Відкриваємо порт
EXPOSE 80

# Nginx автоматично запуститься
