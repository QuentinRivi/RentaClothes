import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["JEANS", "PANTS", "DRESSES"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
