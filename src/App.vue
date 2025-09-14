<template>
  <div id="app">
    <header class="header">
      <h1>Vue Deploy Demo</h1>
      <p>Цей додаток автоматично деплоїться при кожному пуші!</p>
    </header>
    
    <main class="main">
      <div class="counter-section">
        <h2>Лічильник: {{ count }}</h2>
        <div class="buttons">
          <button @click="increment" class="btn btn-primary">+1</button>
          <button @click="decrement" class="btn btn-secondary">-1</button>
          <button @click="reset" class="btn btn-danger">Reset</button>
        </div>
      </div>
      
      <div class="info-section">
        <h3>📊 Інформація про додаток</h3>
        <div class="info-grid">
          <div class="info-item">
            <strong>Версія:</strong> {{ version }}
          </div>
          <div class="info-item">
            <strong>Час збірки:</strong> {{ buildTime }}
          </div>
          <div class="info-item">
            <strong>Git Commit:</strong> {{ gitCommit }}
          </div>
          <div class="info-item">
            <strong>Environment:</strong> {{ environment }}
          </div>
        </div>
      </div>
      
      <div class="features-section">
        <h3>✨ Особливості цього додатку</h3>
        <ul class="features-list">
          <li>Vue 3 + Composition API</li>
          <li>Vue Router для навігації</li>
          <li>Pinia для управління станом</li>
          <li>ESLint + Prettier для якості коду</li>
          <li>Docker контейнеризація</li>
          <li>CI/CD з GitHub Actions</li>
          <li>Автоматичний деплой на сервер</li>
        </ul>
      </div>
    </main>
    
    <footer class="footer">
      <p>Створено з ❤️ за допомогою Vue.js та Docker</p>
    </footer>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'

const count = ref(0)
const version = ref('1.0.0')
const buildTime = ref('')
const gitCommit = ref('')
const environment = ref('production')

const increment = () => {
  count.value++
}

const decrement = () => {
  count.value--
}

const reset = () => {
  count.value = 0
}

onMounted(() => {
  buildTime.value = new Date().toLocaleString()
  gitCommit.value = import.meta.env.VITE_GIT_COMMIT || 'unknown'
  environment.value = import.meta.env.MODE || 'development'
})
</script>

<style scoped>
#app {
  min-height: 100vh;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', sans-serif;
}

.header {
  text-align: center;
  padding: 2rem;
  background: rgba(255, 255, 255, 0.1);
  backdrop-filter: blur(10px);
}

.header h1 {
  margin: 0 0 1rem 0;
  font-size: 2.5rem;
}

.main {
  max-width: 800px;
  margin: 0 auto;
  padding: 2rem;
}

.counter-section {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 15px;
  padding: 2rem;
  margin: 2rem 0;
  text-align: center;
  backdrop-filter: blur(10px);
}

.counter-section h2 {
  font-size: 2rem;
  margin: 0 0 1rem 0;
}

.buttons {
  display: flex;
  gap: 1rem;
  justify-content: center;
  flex-wrap: wrap;
}

.btn {
  padding: 12px 24px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  transition: all 0.3s ease;
  min-width: 100px;
}

.btn-primary {
  background: #4CAF50;
  color: white;
}

.btn-secondary {
  background: #2196F3;
  color: white;
}

.btn-danger {
  background: #f44336;
  color: white;
}

.btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0,0,0,0.2);
}

.info-section, .features-section {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 15px;
  padding: 2rem;
  margin: 2rem 0;
  backdrop-filter: blur(10px);
}

.info-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1rem;
  margin-top: 1rem;
}

.info-item {
  background: rgba(255, 255, 255, 0.1);
  padding: 1rem;
  border-radius: 8px;
}

.features-list {
  list-style: none;
  padding: 0;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 0.5rem;
  margin-top: 1rem;
}

.features-list li {
  background: rgba(255, 255, 255, 0.1);
  padding: 0.75rem;
  border-radius: 5px;
  text-align: center;
}

.footer {
  text-align: center;
  padding: 2rem;
  background: rgba(0, 0, 0, 0.2);
  margin-top: 2rem;
}

@media (max-width: 768px) {
  .buttons {
    flex-direction: column;
    align-items: center;
  }
  
  .btn {
    width: 200px;
  }
}
</style>
