<template>
  <div>
    <!--Offline-Modal-->
    <div
      v-show="!isOnline"
      class="flex items-center gap-x-6 bg-gradient-to-r from-red-700 via-red-600 to-red-700 px-6 py-2.5 sm:px-3.5 sm:before:flex-1"
    >
      <p class="text-white">
        <strong class="font-semibold underline">Du hast gerade kein Internet!</strong>

        Die App befindet sich im Offline-Modus...
      </p>

      <div class="flex flex-1 justify-end">
        <button type="button" class="-m-3 p-3 focus-visible:outline-offset-[-4px]">
          <span class="sr-only">Dismiss</span>
          <XMarkIcon class="h-5 w-5 text-white" aria-hidden="true" @click="isOnline = false" />
        </button>
      </div>
    </div>

    <!--Router-View-->
    <router-view></router-view>
  </div>
</template>

<script setup>
import { XMarkIcon } from '@heroicons/vue/20/solid';
import { wwStore } from './store/wwStore.js';
import { onMounted, ref } from 'vue';
import axios from 'axios';
import { openDB } from 'idb';

const store = wwStore();

const isOnline = ref(true);

onMounted(async () => {
  if (localStorage.getItem(store.$id)) {
    store.$state = JSON.parse(localStorage.getItem(store.$id));
  }

  //----OFFLINE----
  //ServiceWorker probieren zu starten
  if ('serviceWorker' in navigator && location.port != 8080) {
    const ServiceWorker = await navigator.serviceWorker.register('/serviceWorker.js');

    ServiceWorker.addEventListener('updatefound', () => {
      console.log('ServiceWorker updaten...');
      ServiceWorker.active?.postMessage(JSON.stringify({ type: 'SKIP_WAITING' }));
    });
  }

  //Datenbanksync
  self.addEventListener('online', async (event) => {
    console.log('SYNC STARTEN...');

    isOnline.value = true;

    try {
      Zahlungen_OfflineSync();

      console.log('SYNC BEENDET...');
    } catch (error) {
      console.log('FEHLER BEIM SYNCEN');
      console.log(error);
    }
  });

  self.addEventListener('offline', () => {
    isOnline.value = false;
  });
});

async function Zahlungen_OfflineSync() {
  //Schauen ob indexedDb unterstützt
  if (!('indexedDB' in window)) return;

  //Schauen ob Daten vorhanden
  let db = await openDB('WW-Mannschaftskasse', 1, {
    async upgrade(Db, oldVersion, NewVersion, Transaction) {},
  });

  //Schauen ob Datenbank bzw. ObjectStore überhaupt vorhanden ist
  try {
    const l = await db.getAll('Zahlungen_ObjectStore');
    if (l.length <= 1) throw new Error('ObjectStore nicht vorhanden ');
  } catch {
    return;
  }

  // Zahlung offline in IndexedDB einfügen
  let zahlungen = await db.getAll('Zahlungen_ObjectStore');
  if (zahlungen.length > 0) {
    for (const { spielerID, grund, betrag } of zahlungen) {
      await axios.post('/zahlung', {
        spielerID,
        grund,
        betrag,
      });
    }
  }

  //IndexedDB wieder löschen
  if (zahlungen.length > 0) {
    for (const { spielerID, grund, betrag } of zahlungen) {
      await db.delete('Zahlungen_ObjectStore', 'spielerID');
    }
  }
}
</script>

<style scoped></style>
