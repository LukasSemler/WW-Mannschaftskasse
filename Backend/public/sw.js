if (!self.define) {
  let s,
    e = {};
  const i = (i, n) => (
    (i = new URL(i + '.js', n).href),
    e[i] ||
      new Promise((e) => {
        if ('document' in self) {
          const s = document.createElement('script');
          (s.src = i), (s.onload = e), document.head.appendChild(s);
        } else (s = i), importScripts(i), e();
      }).then(() => {
        let s = e[i];
        if (!s) throw new Error(`Module ${i} didn’t register its module`);
        return s;
      })
  );
  self.define = (n, l) => {
    const r = s || ('document' in self ? document.currentScript.src : '') || location.href;
    if (e[r]) return;
    let u = {};
    const a = (s) => i(s, r),
      o = { module: { uri: r }, exports: u, require: a };
    e[r] = Promise.all(n.map((s) => o[s] || a(s))).then((s) => (l(...s), u));
  };
}
define(['./workbox-fa446783'], function (s) {
  'use strict';
  self.skipWaiting(),
    s.clientsClaim(),
    s.precacheAndRoute(
      [
        { url: 'account.png', revision: 'a46f5df2517bf3be4d2c9197e398cbd7' },
        {
          url: 'AppIcons/android-chrome-192x192.png',
          revision: '9b8f4d0402b1ea2f0582e66287869acc',
        },
        {
          url: 'AppIcons/android-chrome-256x256.png',
          revision: '8d1d002636c0a8079b1d6135dcca0435',
        },
        { url: 'AppIcons/apple-touch-icon.png', revision: '3820d269e0b466f7d82be499887ff29d' },
        { url: 'AppIcons/favicon-16x16.png', revision: 'ba4de351ea55ab72d6cb2689ed8e5c06' },
        { url: 'AppIcons/favicon-32x32.png', revision: '76fc5eb068144d4c3b53be765a7a9b2f' },
        { url: 'AppIcons/favicon.ico', revision: '03ecfeadeb70a38ee51b5e9a8f5c30e7' },
        { url: 'AppIcons/mstile-150x150.png', revision: '43b1b84941ae5559c77e8985c241d3db' },
        { url: 'AppIcons/safari-pinned-tab.svg', revision: 'ca10b9fa5450726321db82cccbec7d04' },
        { url: 'assets/AddAmountView-2161230b.js', revision: null },
        { url: 'assets/AddAmountView-35226759.js', revision: null },
        { url: 'assets/AddAmountView-73d40d83.js', revision: null },
        { url: 'assets/AddAmountView-79fbc4e1.js', revision: null },
        { url: 'assets/AddAmountView-800b2608.js', revision: null },
        { url: 'assets/AddAmountView-88676e9b.js', revision: null },
        { url: 'assets/AddAmountView-9868e2f1.js', revision: null },
        { url: 'assets/AddAmountView-9b2551cd.js', revision: null },
        { url: 'assets/AddAmountView-b565e839.js', revision: null },
        { url: 'assets/AddAmountView-d212dc02.js', revision: null },
        { url: 'assets/AddAmountView-dc4f96e2.js', revision: null },
        { url: 'assets/AddAmountView-f45a7cbc.js', revision: null },
        { url: 'assets/AddAmountView-f7277a0f.js', revision: null },
        { url: 'assets/AddAmountView-fd860938.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-11fc71c1.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-55f26fd9.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-5706bedc.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-72dc220c.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-77135357.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-8de09ae2.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-8dfafd49.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-8e624b35.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-9fc692fc.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-a7fb1b12.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-cef73037.js', revision: null },
        { url: 'assets/CurrencyEuroIcon-e54c700f.js', revision: null },
        { url: 'assets/index-1137c5b9.css', revision: null },
        { url: 'assets/index-1a63d944.js', revision: null },
        { url: 'assets/index-2d224952.css', revision: null },
        { url: 'assets/index-3e03b03a.js', revision: null },
        { url: 'assets/index-413c3d9a.css', revision: null },
        { url: 'assets/index-47afbce0.js', revision: null },
        { url: 'assets/index-48ffb9bd.js', revision: null },
        { url: 'assets/index-56501641.js', revision: null },
        { url: 'assets/index-695b23ed.js', revision: null },
        { url: 'assets/index-738d5c8a.js', revision: null },
        { url: 'assets/index-76d35dbf.js', revision: null },
        { url: 'assets/index-8573fe01.js', revision: null },
        { url: 'assets/index-adac0ab1.js', revision: null },
        { url: 'assets/index-badc2e99.js', revision: null },
        { url: 'assets/index-be7f8085.css', revision: null },
        { url: 'assets/index-cd2f63e2.css', revision: null },
        { url: 'assets/index-cf5ffed8.js', revision: null },
        { url: 'assets/index-d584516f.css', revision: null },
        { url: 'assets/index-e86f72d5.js', revision: null },
        { url: 'assets/index-ea0e2642.js', revision: null },
        { url: 'assets/index.2ea22126.css', revision: null },
        { url: 'assets/index.8649c9be.js', revision: null },
        { url: 'assets/index.98c10644.css', revision: null },
        { url: 'assets/index.a4df08fb.js', revision: null },
        { url: 'assets/index.ac6be6f1.js', revision: null },
        { url: 'assets/index.b2161da0.js', revision: null },
        { url: 'assets/index.b9b5955d.js', revision: null },
        { url: 'assets/LoginUserView-01c843b3.js', revision: null },
        { url: 'assets/LoginUserView-126c8d78.js', revision: null },
        { url: 'assets/LoginUserView-298cd862.js', revision: null },
        { url: 'assets/LoginUserView-2aab001a.js', revision: null },
        { url: 'assets/LoginUserView-432fa52b.js', revision: null },
        { url: 'assets/LoginUserView-8001cb4c.js', revision: null },
        { url: 'assets/LoginUserView-8108ac0f.js', revision: null },
        { url: 'assets/LoginUserView-8568615d.js', revision: null },
        { url: 'assets/LoginUserView-a398e822.js', revision: null },
        { url: 'assets/LoginUserView-bd2a5a6f.js', revision: null },
        { url: 'assets/LoginUserView-db130300.js', revision: null },
        { url: 'assets/LoginUserView-df8abce0.js', revision: null },
        { url: 'assets/LoginUserView-e71a5a06.js', revision: null },
        { url: 'assets/LoginUserView-fb088326.js', revision: null },
        { url: 'assets/RulesView-0d7698aa.js', revision: null },
        { url: 'assets/RulesView-391643c1.js', revision: null },
        { url: 'assets/RulesView-3cb93216.js', revision: null },
        { url: 'assets/RulesView-50d5e7c3.js', revision: null },
        { url: 'assets/RulesView-5e8f169f.js', revision: null },
        { url: 'assets/RulesView-726d8db5.js', revision: null },
        { url: 'assets/RulesView-a8cf2856.js', revision: null },
        { url: 'assets/RulesView-a99aff18.js', revision: null },
        { url: 'assets/RulesView-bc0f8958.js', revision: null },
        { url: 'assets/RulesView-c7001252.js', revision: null },
        { url: 'assets/RulesView-c7fa01c3.js', revision: null },
        { url: 'assets/RulesView-cdb1cb76.js', revision: null },
        { url: 'assets/RulesView-d2526450.js', revision: null },
        { url: 'assets/RulesView-d5deacdf.js', revision: null },
        { url: 'assets/StatisticsView-034f9b5a.js', revision: null },
        { url: 'assets/StatisticsView-1fd35206.js', revision: null },
        { url: 'assets/StatisticsView-47994dd2.js', revision: null },
        { url: 'assets/StatisticsView-4838c898.js', revision: null },
        { url: 'assets/StatisticsView-6ced65eb.js', revision: null },
        { url: 'assets/StatisticsView-71a39ad6.js', revision: null },
        { url: 'assets/StatisticsView-7b8b710a.js', revision: null },
        { url: 'assets/StatisticsView-7ebbbba8.js', revision: null },
        { url: 'assets/StatisticsView-87cf4ac3.js', revision: null },
        { url: 'assets/StatisticsView-b3f1b7e2.js', revision: null },
        { url: 'assets/StatisticsView-b664d789.js', revision: null },
        { url: 'assets/StatisticsView-eaeed037.js', revision: null },
        { url: 'assets/StatisticsView-edbffc43.js', revision: null },
        { url: 'assets/StatPerPlayerView-35e6458c.js', revision: null },
        { url: 'assets/StatPerPlayerView-4756ce45.js', revision: null },
        { url: 'assets/StatPerPlayerView-48b23534.js', revision: null },
        { url: 'assets/StatPerPlayerView-7884e086.js', revision: null },
        { url: 'assets/StatPerPlayerView-7be79a29.js', revision: null },
        { url: 'assets/StatPerPlayerView-81e18037.js', revision: null },
        { url: 'assets/StatPerPlayerView-9b104e51.js', revision: null },
        { url: 'assets/StatPerPlayerView-9e106548.js', revision: null },
        { url: 'assets/StatPerPlayerView-a4af2c18.js', revision: null },
        { url: 'assets/StatPerPlayerView-b8b7b30c.js', revision: null },
        { url: 'assets/StatPerPlayerView-bf1a10f9.js', revision: null },
        { url: 'assets/StatPerPlayerView-dd0b80a6.js', revision: null },
        { url: 'assets/SuggestionsView-19f213cc.js', revision: null },
        { url: 'assets/SuggestionsView-4a0647c3.js', revision: null },
        { url: 'assets/SuggestionsView-5e265069.js', revision: null },
        { url: 'assets/SuggestionsView-b8a2bb2b.js', revision: null },
        { url: 'assets/SuggestionsView-def844a3.js', revision: null },
        { url: 'assets/SuggestionsView-e3c6fde5.js', revision: null },
        { url: 'assets/SuggestionsView-e6ab06f5.js', revision: null },
        { url: 'assets/vendor.01148ce3.js', revision: null },
        { url: 'assets/vendor.7df8d123.js', revision: null },
        { url: 'assets/vendor.fb7b22b2.js', revision: null },
        { url: 'css/all.min.css', revision: '3d5ef2bf867c4054a2f336cdbad9e1dc' },
        {
          url: 'images/Gespeichert_Gespeichert_Begruessung.png',
          revision: 'cb4a8adf02b91b621a4981aca913ef2a',
        },
        { url: 'images/Home_Home_Begruessung.jpeg', revision: '0cdf36633fee40ab0b2e5b98db541a18' },
        { url: 'index.html', revision: 'e31d9be529c9aafeb8b24329a7fb99e8' },
        { url: 'logo1.png', revision: 'f14e0db2d3d2f3d0e38dcc61311cf300' },
        { url: 'logo2.jpeg', revision: '55c3f018c690612fa1b36daf38dfaeac' },
        { url: 'myNewsSW.js', revision: '6d6fdd92b3bed11df7161f3de48c44a7' },
        { url: 'PlayerImages/Halmer-Ben.jpeg', revision: 'd43aaaca6f44bca290ff9bd7f5b4e454' },
        { url: 'registerSW.js', revision: '1872c500de691dce40960bb85481de07' },
        { url: 'serviceWorker.js', revision: 'a016254cec7403b208047ab03f4928d2' },
        { url: 'vite.svg', revision: '8e3a10e157f75ada21ab742c022d5430' },
        {
          url: 'WebsiteIcons/android-chrome-192x192.png',
          revision: 'c6dcc427979632769ff3b9320bdee859',
        },
        {
          url: 'WebsiteIcons/android-chrome-512x512.png',
          revision: '4ea3f42ddbf63eb4635c9739f9dca228',
        },
        { url: 'WebsiteIcons/apple-touch-icon.png', revision: '7781f947235b5e1c92fa78a50b147670' },
        { url: 'WebsiteIcons/favicon-16x16.png', revision: '51f9aff80bcc9300ab962353a409693a' },
        { url: 'WebsiteIcons/favicon-32x32.png', revision: 'bc76ecadf6329d6c72f1477b4d176870' },
        { url: 'WebsiteIcons/favicon.ico', revision: '5a487d64612909f60e75571536266665' },
        { url: 'WebsiteIcons/mstile-144x144.png', revision: '989ee74bcba4ec9cd8417ffdf2b43e49' },
        { url: 'WebsiteIcons/mstile-150x150.png', revision: 'd16c7d163d0e9abe12a3239c3f8c2eec' },
        { url: 'WebsiteIcons/mstile-310x150.png', revision: 'd9d73d6a188c5684c017c5845a787b4c' },
        { url: 'WebsiteIcons/mstile-310x310.png', revision: '32a58addaed884b59d7185d3bd0302d7' },
        { url: 'WebsiteIcons/mstile-70x70.png', revision: '3b9539bd5c71bf7a6d516bdda0bea69a' },
        { url: 'WebsiteIcons/myNews_Logo.svg', revision: 'd73004c8947d7c658af3dfce213406b7' },
        { url: 'WebsiteIcons/myNewsLogo.svg', revision: '61fe12e026e63d31f75613354846d088' },
        { url: 'WebsiteIcons/safari-pinned-tab.svg', revision: 'f7031ef4dc2edd69852f4f8e4774dbc0' },
        {
          url: 'AppIcons/android-chrome-192x192.png',
          revision: '9b8f4d0402b1ea2f0582e66287869acc',
        },
        {
          url: 'AppIcons/android-chrome-256x256.png',
          revision: '8d1d002636c0a8079b1d6135dcca0435',
        },
        { url: 'manifest.webmanifest', revision: '549df73a79f87c9b942ffb00685a25b1' },
      ],
      {},
    ),
    s.cleanupOutdatedCaches(),
    s.registerRoute(new s.NavigationRoute(s.createHandlerBoundToURL('index.html')));
});
