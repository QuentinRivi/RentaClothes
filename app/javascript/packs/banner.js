import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["JEAN", "PANTS", "DRESS"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
