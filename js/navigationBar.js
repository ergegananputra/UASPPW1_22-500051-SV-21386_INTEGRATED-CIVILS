const mqScreenWidth = window.matchMedia("(max-width: 880px)");

function handleMediaQuery(mq) {
  if (mq.matches) {
    // below 880px width
    document.getElementById('navbarContainer').innerHTML = `
      <div class="ICNavbar sticky-top">
        <nav class="navbar navbar-expand" id="my_navbar">
          <div class="nav navbar-nav">
            <a class="navbar-brand logoIC" href="#">
              <div id="logoContainer">
                <svg version="1.1" id="logo_svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                    <path id="logo_path" d="M498.3,51.7v396.6c-19.4,3.5-39.6,5.4-60.4,5.4c-90.8,0-170.9-35.4-218.4-89.2C265,346.4,297.2,302,297.2,250
                        c0-16.8-3.4-32.8-9.5-47.4c-43.4,2.2-83.4,17.7-113.7,47.4s-46.8,69.2-50,112.6l0,0v137H1.7V0.5H124v137
                        C81,156.7,50.9,199.8,50.9,250c0,15.1,2.7,29.6,7.8,42.9l160.9-157.3c47.5-53.8,127.5-89.3,218.3-89.3
                        C458.7,46.4,478.9,48.2,498.3,51.7z"/>
                    <path id="logo_path" display="none" d="M123.7-204.5c0-31.8,19-59.2,46.4-71.4v-86.9H92.5v316.6h77.6v-86.9C142.8-145.3,123.7-172.6,123.7-204.5z"/>
                    <path id="logo_path" display="none" d="M369.2-333.7c-57.6,0-108.4,22.4-138.5,56.6c28.9,11.5,49.3,39.6,49.3,72.6s-20.4,61.1-49.3,72.6
                        c30.1,34.2,80.9,56.6,138.5,56.6c13.2,0,26-1.2,38.3-3.4v-251.6C395.2-332.5,382.4-333.7,369.2-333.7z"/>
                    <path id="logo_path" display="none" d="M274-234.5c-3.7-8.9-9.1-17.2-16.2-24.5c-7.9-8.1-17.2-14.1-27-18l-102.1,99.8c3.7,10,9.5,19.3,17.4,27.4
                        c7.1,7.3,15.3,12.9,24.1,16.8c2-27.5,12.4-52.6,31.7-71.5S246.4-233.1,274-234.5z"/>
                </svg>
              </div>
              <div class="TITLES" id="TITLES"></div>
            </a>
          </div>
          <div class="nav navbar-nav costumMenu" id="navMenu">
            <div class="btn-group">
              <button type="button" class="btn btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="material-symbols-outlined" id="navMenu">
                  menu
                </span>
              </button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="index.php" id="home">Home</a>
                <a class="dropdown-item" href="snitch.php" id="snitch">Snitch</a>
                <a class="dropdown-item" href="database.php" id="database">Database</a>
                <a class="dropdown-item" href="myAccount.html" id="myaccount">My Account</a>
                <a class="dropdown-item" href="myMessages.html" id="messages">Messages</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" onclick="logOutSystem();">Log Out</a>
              </div>
            </div>
          </div>
        </nav>
      </div>
    `;
  } else {
    // above 880px width
    document.getElementById('navbarContainer').innerHTML = `
      <div class="ICNavbar sticky-top">
        <nav class="navbar navbar-expand" id="my_navbar">
          <div class="nav navbar-nav">
            <a class="navbar-brand logoIC" href="#">
              <div id="logoContainer">
                <svg version="1.1" id="logo_svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 500 500" enable-background="new 0 0 500 500" xml:space="preserve">
                    <path id="logo_path" d="M498.3,51.7v396.6c-19.4,3.5-39.6,5.4-60.4,5.4c-90.8,0-170.9-35.4-218.4-89.2C265,346.4,297.2,302,297.2,250
                        c0-16.8-3.4-32.8-9.5-47.4c-43.4,2.2-83.4,17.7-113.7,47.4s-46.8,69.2-50,112.6l0,0v137H1.7V0.5H124v137
                        C81,156.7,50.9,199.8,50.9,250c0,15.1,2.7,29.6,7.8,42.9l160.9-157.3c47.5-53.8,127.5-89.3,218.3-89.3
                        C458.7,46.4,478.9,48.2,498.3,51.7z"/>
                    <path id="logo_path" display="none" d="M123.7-204.5c0-31.8,19-59.2,46.4-71.4v-86.9H92.5v316.6h77.6v-86.9C142.8-145.3,123.7-172.6,123.7-204.5z"/>
                    <path id="logo_path" display="none" d="M369.2-333.7c-57.6,0-108.4,22.4-138.5,56.6c28.9,11.5,49.3,39.6,49.3,72.6s-20.4,61.1-49.3,72.6
                        c30.1,34.2,80.9,56.6,138.5,56.6c13.2,0,26-1.2,38.3-3.4v-251.6C395.2-332.5,382.4-333.7,369.2-333.7z"/>
                    <path id="logo_path" display="none" d="M274-234.5c-3.7-8.9-9.1-17.2-16.2-24.5c-7.9-8.1-17.2-14.1-27-18l-102.1,99.8c3.7,10,9.5,19.3,17.4,27.4
                        c7.1,7.3,15.3,12.9,24.1,16.8c2-27.5,12.4-52.6,31.7-71.5S246.4-233.1,274-234.5z"/>
                </svg>
              </div>
              <div class="TITLES" id="TITLES"></div>
            </a>
          </div>
          <div class="nav navbar-nav costumMenu" id="navMenu">
            <a class="nav-item nav-link" href="index.php" id="home">Home</a>
            <a class="nav-item nav-link" href="snitch.php" id="snitch">Snitch</a>
            <a class="nav-item nav-link" href="database.php" id="database">Database</a>
            <div class="btn-group">
              <button type="button" class="btn btn-danger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="material-symbols-outlined" id="navMenu">
                  account_circle
                </span>
              </button>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="myAccount.html" id="myaccount">My Account</a>
                <a class="dropdown-item" href="myMessages.html" id="messages">Messages</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" onclick="logOutSystem();">Log Out</a>
              </div>
            </div>
          </div>
        </nav>
      </div>
    `;
  }
}


function logOutSystem(){
  let respon = confirm("Are you sure want to log out?");
  if (respon) {
      window.location.href = "index.php";
  }
}

handleMediaQuery(mqScreenWidth);
mqScreenWidth.addListener(handleMediaQuery);
