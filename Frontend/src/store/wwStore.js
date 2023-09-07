import { defineStore } from 'pinia';

//Die Funktion läuft intern bei allen actions ab um den State im localstorage zu speichern
function SaveState(abmelden) {
  const store = wwStore();

  //   State speichern
  if (store.aktiverUser != null) {
    localStorage.setItem(store.$id, JSON.stringify(store.$state));
  } 
  // Abmelden und User aus Localstorage löschen
  else if (abmelden) {
    localStorage.setItem(store.$id, JSON.stringify(store.$state));
  }
}

export const wwStore = defineStore('WW-Store', {
  state: () => ({
    // aktiverUser: {
    //   email: 'lukas.semler@gmail.com',
    //   isadmin: true,
    //   nachname: 'Semler',
    //   passwort: 'LukasPW',
    //   profilbild_url: '/PlayerImages/Wallner.jpg',
    //   s_id: 1,
    //   vorname: 'Lukas',
    // },
    aktiverUser: null,
  }),
  getters: {
    getAktiverUser() {
      return this.aktiverUser;
    },
  },
  actions: {
    setAktivenUser(user) {
      this.aktiverUser = user;

      SaveState();
    },

    deleteAktivenUser() {
      this.aktiverUser = null;
      SaveState(true);
    },
  },
});
