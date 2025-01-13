import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  base: '/app/', // Adjust the base path if necessary
  plugins: [react()],
  server: {
    port: import.meta.env.CLIENT_PORT || 5173, // Use the provided port from the environment
  },
});
