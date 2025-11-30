const assetsToCache = [
  "/",
  "index.html",
  "manifest.json",
  "css/navBar.css",
  "js/navBar.js",
  "js/initServiceWorker.js",
  "html/artistPage.html",
  "icons/pwaLogo128px.png",
  "icons/pwaLogo192px.png",
  "icons/pwaLogo384px.png",
  "icons/pwaLogo512px.png",
  "images/pwaLogoImage.png",
  "images/magnifyingGlass.png"
];

const cachedAssetsList = "cachedAssetsList";

self.addEventListener("install", (installEvt) => {
  installEvt.waitUntil(caches.open(cachedAssetsList).then((cacheEditor) => {
    return cacheEditor.addAll(assetsToCache);
  })
  .then(() => {
    self.skipWaiting();
  })
  .catch((error) => {
    console.log(error);
  }));
});

self.addEventListener("activate", (activateEvt) => {
  activateEvt.waitUntil(caches.keys().then((existingCacheLists) => {
    return Promise.all(existingCacheLists.map((key) => {
      if (key !== cachedAssetsList) {
        console.log("Removed old cache from", key);
        return caches.delete(key);
      }
    }));
  })
  .then(() => self.clients.claim()));
});

self.addEventListener("fetch", (fetchEvt) => {
  fetchEvt.respondWith(fetch(fetchEvt.request).catch((error) => {
    console.log("Server dont wanna play along cuz: " + error);
    return caches.open(cachedAssetsList).then((cacheEditor) => {
      console.log("Unable to fetch requested file, serving from cache instead.")
      return cacheEditor.match(fetchEvt.request);
    });
  }));
})