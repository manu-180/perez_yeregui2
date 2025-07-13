'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "f9b5d54d15ddd94cd69df74fc0525bad",
"assets/AssetManifest.bin.json": "982cce44c349046e6445f08603bc0671",
"assets/AssetManifest.json": "3b37ce25b3ccbb2bfd6635a10871438c",
"assets/assets/icon/iglogo.svg": "3c451c27d33cbbaf8401aa796bcd7ec5",
"assets/assets/icon/logo-perez-yeregui.png": "4811042ecd67a7d0fc177b72f6fe3bfb",
"assets/assets/icon/py.png": "a5b92380ba908ac6d13d17d0076a3b67",
"assets/assets/images/auto.png": "6a7f8a135badc29422388ccee5362561",
"assets/assets/images/bici.png": "e49a7ecbc99253999b10a2870621a179",
"assets/assets/images/celular.png": "c8ba42787c25e9c81881f1fd5953f9d0",
"assets/assets/images/civil.png": "a77dc5ebf535d3d23aa3c9ca7adf6c08",
"assets/assets/images/contacto.png": "f0fac05e10a56d311e9b8a68155ba5b3",
"assets/assets/images/escuela.png": "01f60a655ab98b60fd850eb230b442b7",
"assets/assets/images/familia.png": "71c582ddba009cd04f02c21c293a333f",
"assets/assets/images/familiaseguros.png": "a98ed58a238ca0e550827d0181ed97b5",
"assets/assets/images/hogar.png": "ddc1915d7bbfd2e1e98ed0b10dd819fc",
"assets/assets/images/logo.png": "a7c02fe1fb48d816b53ed746f8021422",
"assets/assets/images/medicoseguros.png": "54828bd4bd13c5a6c1af01c6c211caa5",
"assets/assets/images/mercados-especiales.png": "7d9769fed501b4a4ca18adf31f20314f",
"assets/assets/images/mercados-especificos.png": "9189979f6594afc447706b87d9b97141",
"assets/assets/images/moto.png": "04ec7578264749521296bf37bc3b9fca",
"assets/assets/images/notebook.png": "e29d3d4197d77498e1dc2ad16c86774d",
"assets/assets/images/otros.png": "1fb08013fb24f87762605a751d9c6631",
"assets/assets/images/PyME.png": "eb0f5bad8459d0ad9796b8ea9ac4139d",
"assets/assets/images/quienessomos.png": "9da804b5f4bea4b8ed05985186d442a3",
"assets/assets/images/vida-laboral.png": "8979a7d9c3569daa9656b70fcdbbaa01",
"assets/assets/images/vida.png": "bb61c1b8d5101b989b226a61c085cb9c",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "cce0d3e22cb6327f55c2669d060c0d19",
"assets/NOTICES": "218ee8e0b451678d1647f22d3920b35d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "00a0d5a58ed34a52b40eb372392a8b98",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "de68a32dd1026a880a204905bea598ce",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "451bc6d1c0fc2603ad74fafc46e7d99f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "0b54c61a39befe0a0820731f942bd972",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "e79088d7c1c2bbe2b8c0f4518d6886ec",
"icons/Icon-192.png": "85672ca919788c5d88f4b4b07cb07bc9",
"icons/Icon-512.png": "cbe45fa50409c0d98f35a8f48d931bef",
"icons/Icon-maskable-192.png": "85672ca919788c5d88f4b4b07cb07bc9",
"icons/Icon-maskable-512.png": "cbe45fa50409c0d98f35a8f48d931bef",
"index.html": "a9dee79907f97c093632d83ae816d314",
"/": "a9dee79907f97c093632d83ae816d314",
"main.dart.js": "3f16e2d20d81c1a69a6fc45d48da6eb0",
"manifest.json": "f24d674d5c3e6f9b00d3a6f4066efae9",
"vercel.json": "7708fbf29b99cd92c2a778d60001c5ba",
"version.json": "28e89f2dc76bbd0c12a54fb1e6f5c4c4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
