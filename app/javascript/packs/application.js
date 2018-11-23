import "bootstrap";
import { loadDynamicBannerText } from '../packs/banner.js';
import { initUpdateNavbarOnScroll } from '../packs/navbar.js';
import "./flashes";
initUpdateNavbarOnScroll();
loadDynamicBannerText();
