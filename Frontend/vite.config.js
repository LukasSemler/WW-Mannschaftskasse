import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';
import { VitePWA } from 'vite-plugin-pwa';
import path from 'path';

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    port: 8080,
  },
  preview: {
    port: 4173,
  },
  plugins: [
    vue(),
    VitePWA({
      injectRegister: 'auto', //RegisterSW
      registerType: 'autoUpdate',

      // CustomServiceWorker
      strategies: 'injectManifest',
      srcDir: 'src',
      filename: 'serviceWorker.js',

      workbox: {
        globPatterns: ['**/*.{js,css,html,ico,png,svg,jpeg}'],
      },

      manifest: {
        name: 'WW-Mannschaftsverwaltung',
        short_name: 'WW-MV',
        description: 'WW-Mannschaftsverwaltung',
        icons: [
          {
            src: '/AppIcons/android-chrome-192x192.png',
            sizes: '192x192',
            type: 'image/png',
          },
          {
            src: '/AppIcons/android-chrome-256x256.png',
            sizes: '256x256',
            type: 'image/png',
          },
        ],
        theme_color: '#9BCF39',
        background_color: '#9BCF39',
        display: 'standalone',
      },
    }),
  ],
  build: {
    outDir: path.resolve(__dirname, '../Backend/public'),
  },
});
