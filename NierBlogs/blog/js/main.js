// API FORM
var form = document.getElementById('sheetdb-form');
form.addEventListener("submit", e => {
  e.preventDefault();
  fetch(form.action, {
    method: "POST",
    body: new FormData(form),
  })
    .then(response => response.json())
    .then((html) => {
      // you can put any JS code here
      alert('Success');
    });
});

var form2 = document.getElementById('sheetdb-form2');
form2.addEventListener("submit", e => {
  e.preventDefault();
  fetch(form2.action, {
    method: "POST",
    body: new FormData(form2),
  })
    .then(response => response.json())
    .then((html) => {
      // you can put any JS code here
      alert('Success');
    });
});

// Accordion
var acc = document.getElementsByClassName("accordion");
for (var i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    }
  });
}

// Navigation
const navItems = document.querySelector('.nav__items');
const openNavBtn = document.querySelector('#open__nav-btn');
const closeNavBtn = document.querySelector('#close__nav-btn');

const openNav = () => {
  navItems.style.display = 'flex';
  openNavBtn.style.display = 'none';
  closeNavBtn.style.display = 'inline-block';
};

const closeNav = () => {
  navItems.style.display = 'none';
  openNavBtn.style.display = 'inline-block';
  closeNavBtn.style.display = 'none';
};

openNavBtn.addEventListener('click', openNav);
closeNavBtn.addEventListener('click', closeNav);

// Sidebar
const sidebar = document.querySelector('aside');
const showSidebarBtn = document.querySelector('#show__sidebar-btn');
const hideSidebarBtn = document.querySelector('#hide__sidebar-btn');

const showSidebar = () => {
  sidebar.style.left = '0';
  showSidebarBtn.style.display = 'none';
  hideSidebarBtn.style.display = 'inline-block';
};

const hideSidebar = () => {
  sidebar.style.left = '-100%';
  showSidebarBtn.style.display = 'inline-block';
  hideSidebarBtn.style.display = 'none';
};

showSidebarBtn.addEventListener('click', showSidebar);
hideSidebarBtn.addEventListener('click', hideSidebar);
