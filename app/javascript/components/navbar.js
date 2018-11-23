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



