const assetsToCache = [
  "/",
  "index.html",
  "manifest.json",
  "css/style.css",
  "js/app.js",
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
    console.log("Cache added");
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
  fetchEvt.respondWith(fetch(fetchEvt.request).catch(() => {
    return caches.open(cachedAssetsList).then((cacheEditor) => {
      return cacheEditor.match(fetchEvt.request);
    });
  }));
})