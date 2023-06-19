<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Integrated Civils: Your Data is Our Data</title>

    <!-- Google Font -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

    <!-- Google Icon -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/logo/Logo Integrated Civils  White.svg" type="image/x-icon">

    <!-- CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/database.css">
    <link rel="stylesheet" href="css/footer.css">


    <style>
        #my_navbar {
            background : radial-gradient(circle, #6b0505, #6b0505ed);
            padding-top : 10px;
            padding-bottom : 10px;

            transition: 0.4s;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 99;

        }

        #logoContainer svg{
            height: 50px;
            transition: 0.4s;
        }

        #logoContainer path {
            fill: white !important;
        }

        #navMenu {
            font-size: 15pt;
            transition: 0.4s;
        }

    </style>
</head>
<body>
    <!-- Navbar -->
    <div id="navbarContainer"></div>
    <div class="invisible-gap"></div>

    <!-- Body -->
    <div class="database_suit">
        <h1 class="h1">Search in CitData</h1>
        <p style="text-align: center;">The purpose of this platform is to enable people to check each other's background. 
            Please use it responsibly, as we value our privacy.
            Anyone who violates this will face consequences.
        </p>


        <!-- Search Box -->
        <div class="search-bar">
            <input id="keywordToSearch" type="text" placeholder="Search...">
            <button type="button" onclick="startSearch()">Search</button>
        </div>



        <!-- Create Search Query Result -->
        <div class="search-query-result" id="resultQuery"></div>

    </div>

    <!-- Footer Transition -->
    <div class="footer_transition">
        <br><br><br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br><br><br>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p class="footer-text">Integrated Civils: Connecting Every Aspect of Life</p>
            <p class="footer-description">This website aims to connect every aspect of life through civil engineering. It provides a platform for sharing information, ideas, and solutions for various civil engineering challenges.</p>
            <img src="assets/logo/Logo Integrated Civils  White.svg" alt="Integrated Civils">
            <div class="footer-contact">
                <p class="footer-contact-info">Contact us:</p>
                <p>Email: info@integratedcivils.com</p>
                <p>Phone: +62 (123) 456-7890</p>
            </div>
            <div class="footer-location">
                <p class="footer-location-info">Location:</p>
                <p>123 Main Street, City, State, Country</p>
            </div>
            <p class="footer-copy">© 2023 Integrated Civils. All rights reserved.</p>
        </div>
    </footer>


    <!-- Script -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <script src="js/navigationBar.js"></script>
    <script src="js/searchEngine.js"></script>

    <script>
        let TITLES = document.getElementById("TITLES");
        TITLES.innerHTML="Integrated Civils";
        document.getElementById("database").style.color = "#cd853f";
    </script>

    <script>
        function toggleDescription(stepNumber) {
            const description = document.getElementById(`description-${stepNumber}`);
            const ul = description.querySelector('ul');
            if (description.classList.contains('show-description')) {
                description.classList.remove('show-description');
                ul.style.display = 'none';
            } else {
                description.classList.add('show-description');
                ul.style.display = 'block';
            }
        }

    </script>
</body>
</html>