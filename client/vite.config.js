import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// Log the VITE_API_URL environment variable to the console
console.log('VITE_API_URL:', process.env.VITE_API_URL);

export default defineConfig({
  base: '/',
  plugins: [react()],
});
