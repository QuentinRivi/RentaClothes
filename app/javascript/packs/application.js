import "bootstrap";
import '../components/navbar.js';
import { loadDynamicBannerText } from '../packs/banner.js';
import { initUpdateNavbarOnScroll } from '../packs/navbar.js';
import "./flashes";
initUpdateNavbarOnScroll();
loadDynamicBannerText();

