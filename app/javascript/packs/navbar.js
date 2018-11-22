function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  const navbar2 = document.getElementById('home-h4');
  if (navbar && navbar2) {
    console.log(navbar)
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-wagon-white');
      } else {
        navbar.classList.remove('navbar-wagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
