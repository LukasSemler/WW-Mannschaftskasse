import { cleanupOutdatedCaches, precacheAndRoute } from 'workbox-precaching';
import { NetworkFirst } from 'workbox-strategies';
import { registerRoute } from 'workbox-routing';
import { ExpirationPlugin } from 'workbox-expiration';

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
  new NetworkFirst({
    cacheName: 'ZahlungenCache',
    plugins: [
      new ExpirationPlugin({
        maxEntries: 60,
        maxAgeSeconds: 30 * 24 * 60 * 60, // 30 Days
      }),
    ],
  }),
);
registerRoute(
  ({ url }) => url.pathname.match('/spieler'),
  new NetworkFirst({
    cacheName: 'SpielerCache',
    plugins: [
      new ExpirationPlugin({
        maxEntries: 60,
        maxAgeSeconds: 30 * 24 * 60 * 60, // 30 Days
      }),
    ],
  }),
);
registerRoute(
  ({ url }) => url.pathname.match('/ausgaben'),
  new NetworkFirst({
    cacheName: 'AusgabenCache',
    plugins: [
      new ExpirationPlugin({
        maxEntries: 60,
        maxAgeSeconds: 30 * 24 * 60 * 60, // 30 Days
      }),
    ],
  }),
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
