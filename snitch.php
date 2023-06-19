<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Integrated Civils: Report Someone That Break The Law</title>

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
    <link rel="stylesheet" href="css/snitch.css">
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

    <div class="snitch">
        <div class="safezone">
            
            <div class="description-card">
                <div class="span-container">
                    <a href="##" onclick="secureIcon(1)"><span class="material-symbols-outlined">security</span></a>
                    <a href="##" onclick="secureIcon(2)"><span class="material-symbols-outlined">shield_lock</span></a>
                    <a href="##" onclick="secureIcon(3)"><span class="material-symbols-outlined">local_police</span></a>
                </div>
                <h2 class="h2 shadow_text">How to report someone</h2>
                <div class="card-container">
                    <p class="shadow_text"> 
                        This form allows you to report somebody and provide information about them. Follow the steps below to use the form effectively:
                    </p>
                    <div class="card">
                        <div class="card-body" onclick="toggleDescription(1)">
                            <h5 class="card-title" >Step 1</h5>
                            <p class="card-text step-description" id="description-1">
                                Fill in the "Respondent Name" and "Respondent ID" fields to provide your own information as the reporter.</p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body" onclick="toggleDescription(2)">
                            <h5 class="card-title" >Step 2</h5>
                            <div class="step-description" id="description-2">
                                <p>
                                    Next, provide details about the citizen involved:
                                </p>
                                <ul style="display: none;">
                                    <li>Enter the citizen's name in the "Citizen Name" field.</li>
                                    <li>Enter the citizen's ID in the "Citizen ID" field.</li>
                                    <li>Select the gender of the citizen from the "Gender" dropdown list.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body"  onclick="toggleDescription(3)">
                            <h5 class="card-title">Step 3</h5>
                            <p class="card-text step-description" id="description-3">Choose the appropriate category type from the "Category Type" dropdown list to specify the nature of the incident.</p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body" onclick="toggleDescription(4)">
                            <h5 class="card-title" >Step 4</h5>
                            <p class="card-text step-description" id="description-4">Lastly, provide the location of the incident in the "Location" field.</p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body" onclick="toggleDescription(5)">
                            <h5 class="card-title" >Step 5</h5>
                            <p class="card-text step-description" id="description-5">Click the "Submit" button to submit the report.</p>
                        </div>
                    </div>
                </div>
            </div>
            

            <div class="form-container">
                <h1 class="h1">Report Form</h1>
                <form class="citizen-form" action="php/process_form.php" method="POST" onsubmit="return confirmSubmission()">
                    <div class="form-group">
                        <label for="name">Respondent Name:</label>
                        <input type="text" id="res_name" name="res_name" required>
                    </div>

                    <div class="form-group">
                        <label for="citizen-id">Respondent ID: (16 digit)</label>
                        <input type="text" id="res_citizen-id" name="res_citizen-id" required>
                    </div>
                    <hr>
                    <div class="form-group">
                    <label for="name">Citizen Name:</label>
                    <input type="text" id="name" name="name" required>
                    </div>

                    <div class="form-group">
                        <label for="citizen-id">Citizen ID: (16 digit)</label>
                        <input type="text" id="citizen-id" name="citizen-id" required>
                    </div>

                    <div class="form-group">
                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender" required>
                        <option value="" disabled selected>Select Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="category-type">Category Type:</label>
                        <select id="category-type" name="category-type" required>
                        <option value="" disabled selected>Select Category Type</option>
                        <option value="Violence">Violence</option>
                        <option value="Theft">Theft</option>
                        <option value="Criminal Act">Criminal Act</option>
                        <option value="Hate Speech">Hate Speech</option>
                        <option value="Not Fair Act">Not Fair Act</option>
                        <option value="Abusing The Law">Abusing The Law</option>
                        </select>
                    </div>

                    <div class="form-group">
                    <label for="location">Location:</label>
                    <input type="text" id="location" name="location" required>
                    </div>

                    <p>
                        Please ensure that all required fields are filled in accurately for a 
                        comprehensive report.
                    </p>

                    <button type="submit">Submit</button>
                    
                </form>
                
            </div>
            
        </div>  

    </div>

    <!-- Footer Transition -->
    <div class="footer_transition">
        <br><br><br><br><br><br><br>
        <br><br><br><br><br><br><br>

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

    <script src="js/spanSecureIcon.js"></script>
    <script src="js/navigationBar.js"></script>
    <script>
        let TITLES = document.getElementById("TITLES");
        TITLES.innerHTML="Integrated Civils";
        document.getElementById("snitch").style.color = "#cd853f";
    </script>

    <script>
        function confirmSubmission() {
            const confirmation = confirm("Are you sure you want to submit the form?");
            return confirmation;
        }


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