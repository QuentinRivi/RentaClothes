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

const updateBadge = (number) => {
  const badge = document.querySelector('.navbar-wagon .badge');

  if (number === 0) {
    badge.style.display = "none";
  } else {
    badge.style.display = "";
    badge.innerText = number;
  }
};

const fetchNotificationNumber = () => {
  fetch("/notifications/fetch")
  .then(response => response.json())
  .then((data) => {
    updateBadge(data.count);
  });
}

const initPoolingNotification = () => {
  const badge = document.querySelector('.navbar-wagon .badge');
  if (badge) {
    setInterval(fetchNotificationNumber, 3000)
  }
};

document.addEventListener("DOMContentLoaded", initPoolingNotification);



