import { resolve, dirname } from 'path';
import { existsSync } from 'fs';
import { fileURLToPath } from 'url';

// Path to the dist directory
const distPath = resolve(dirname(fileURLToPath(import.meta.url)), 'dist');

// Check if the dist folder exists and log the path
if (existsSync(distPath)) {
  console.log(`Build completed! dist directory is located at: ${distPath}`);
} else {
  console.error('Error: dist directory does not exist.');
}
