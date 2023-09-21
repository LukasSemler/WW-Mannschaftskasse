import { cleanupOutdatedCaches, precacheAndRoute } from 'workbox-precaching';
import { clientsClaim } from 'workbox-core';
import { NetworkFirst } from 'workbox-strategies';
import { registerRoute } from 'workbox-routing';

cleanupOutdatedCaches();
precacheAndRoute(self.__WB_MANIFEST);

//----- SW-Message -----
self.addEventListener('message', (event) => {
  const { type, data } = JSON.parse(event.data);
  console.log(`TYPE: ${type} | DATA: ${data}`);

  //Skip waiting
  if (type == 'SKIP_WAITING') {
    //Neue SW übernehmen
    self.skipWaiting();
    console.log('SERVICEWORKER IS ACTIVE');
  }

  //Clear Cache
  if (type == 'CLEAR_CACHE') {
    console.log(`Cache: ${data} wurde gelöscht`);
    //Cache löschen
    caches.delete(data?.toString());
  }
});

//----- Caching (NUR HOMEVIEW)----
registerRoute(
  ({ url }) => url.pathname.match('/zahlung'),
  new NetworkFirst({ cacheName: 'ZahlungenCache' }),
);
registerRoute(
  ({ url }) => url.pathname.match('/spieler'),
  new NetworkFirst({ cacheName: 'SpielerCache' }),
);
registerRoute(
  ({ url }) => url.pathname.match('/ausgaben'),
  new NetworkFirst({ cacheName: 'AusgabenCache' }),
);
registerRoute(
  ({ url }) => url.pathname.match('/.*/'),
  new NetworkFirst({ cacheName: 'ApplicationCache' }),
);

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
