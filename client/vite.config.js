import { defineConfig, loadEnv } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig(({ mode }) => {
  // Load env file based on `mode`
  const env = loadEnv(mode, process.cwd(), '')
  
  // Log the loaded environment variables
  console.log('Mode:', mode)
  console.log('VITE_API_URL:', env.VITE_API_URL)

  return {
    base: '/',
    plugins: [react()],
    define: {
      'process.env.VITE_API_URL': JSON.stringify(env.VITE_API_URL),
      'process.env.VITE_PYTHON_API_URL': JSON.stringify(env.VITE_PYTHON_API_URL)
    }
  }
})