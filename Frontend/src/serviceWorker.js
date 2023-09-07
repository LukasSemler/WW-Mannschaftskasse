import { cleanupOutdatedCaches, precacheAndRoute } from 'workbox-precaching';
import { clientsClaim } from 'workbox-core';

precacheAndRoute(self.__WB_MANIFEST);

//----- SW-Message -----
self.addEventListener('message', (event) => {
  //Skip waiting

  if (event.data === 'SKIP_WAITING' || event.data.type === 'SKIP_WAITING') {
    console.log('SERVICEWORKER IST JETZT AKTIV');
    self.skipWaiting();
    clientsClaim();
  }
});


//----- Caching ----
//Alten Cache löschen
cleanupOutdatedCaches();






// runtimeCaching: [
// Public-Corder Cache
//     {
//       urlPattern: /^(.*\/)/,
//       urlPattern: /^public\/(.+)/,
//       handler: 'NetworkFirst',
//       options: {
//         cacheName: 'imagesCache',
//         expiration: {
//           maxEntries: 10,
//           maxAgeSeconds: 60 * 60 * 24 * 2, // <== 2 Tage
//         },
//         cacheableResponse: {
//           statuses: [0, 200],
//         },
//       },
//     },
// Spieler Cache
// Suggestions Cache
// Stats Cache
//   ],
