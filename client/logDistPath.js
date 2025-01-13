import { resolve, dirname } from 'path';
import { existsSync} from 'fs';
import { fileURLToPath } from 'url';

// Get current file's directory
const currentFilePath = fileURLToPath(import.meta.url);
const currentDir = dirname(currentFilePath);

// Path to the dist directory
const distPath = resolve(currentDir, 'dist');

// Check if the dist folder exists and log paths
if (existsSync(distPath)) {
    console.log('\nPath Details:');
    console.log('------------------------');
    console.log(`Current File: ${currentFilePath}`);
    console.log(`Current Directory: ${currentDir}`);
    console.log(`Dist Absolute Path: ${distPath}`);
} else {
    console.error('\nError: dist directory does not exist.');
    console.log(`Attempted path: ${distPath}`);
}
