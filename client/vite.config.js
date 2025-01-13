import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  base: '/',
  plugins: [react()],
  server: {
    port: process.env.CLIENT_PORT || 5173, // Use process.env for server-side environment variables
  },
});
