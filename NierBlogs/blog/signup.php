<?php
require 'config/constants.php';

// get back form data if there was a registration error
$firstname = $_SESSION['signup-data']['firstname'] ?? null;
$lastname = $_SESSION['signup-data']['lastname'] ?? null;
$username = $_SESSION['signup-data']['username'] ?? null;
$email = $_SESSION['signup-data']['email'] ?? null;
$createpassword = $_SESSION['signup-data']['createpassword'] ?? null;
$confirmpassword = $_SESSION['signup-data']['confirmpassword'] ?? null;
// delete signup data session
unset($_SESSION['signup-data']);
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NIER - REGISTER</title>
    <!-- CUSTOM STYLESHEET -->
    <link rel="stylesheet" href="<?= ROOT_URL ?>css/style.css">
    <!-- BOOTSTRAP CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <!-- ICONSCOUT CDN -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    
    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@300;400;500;600;700&family=Syne:wght@400;500;700&display=swap" rel="stylesheet">

</head>


<body>


<nav>
        <div class="container nav__container border-bottom border-black">
            <a href="<?= ROOT_URL ?>" class="nav__logo">NIER</a>
            <ul class="nav__items">
            <li><a href="<?= ROOT_URL ?>index.php">Home</a></li>
                <li><a href="<?= ROOT_URL ?>blog.php">Blog</a></li>
                <li><a href="<?= ROOT_URL ?>about.php">About</a></li>
                <li><a href="<?= ROOT_URL ?>contact.php">Contact</a></li>
                
            </ul>

            <button id="open__nav-btn"><i class="uil uil-bars"></i></button>
            <button id="close__nav-btn"><i class="uil uil-multiply"></i></button>
        </div>
    </nav>
    <!--====================== END OF NAV ====================-->


    <section class="form__section">
        <div class="container form__section-container">
            <h2>SIGN UP</h2>
            <?php if (isset($_SESSION['signup'])) : ?>
                <div class="alert__message error">
                    <p>
                        <?= $_SESSION['signup'];
                        unset($_SESSION['signup']);
                        ?>
                    </p>
                </div>
            <?php endif ?>
            <form action="<?= ROOT_URL ?>signup-logic.php" enctype="multipart/form-data" method="POST">
                <input type="text" name="firstname" value="<?= $firstname ?>" placeholder="First Name">
                <input type="text" name="lastname" value="<?= $lastname ?>" placeholder="Last Name">
                <input type="text" name="username" value="<?= $username ?>" placeholder="Username">
                <input type="email" name="email" value="<?= $email ?>" placeholder="Email">
                <input type="password" name="createpassword" value="<?= $createpassword ?>" placeholder="Create Password">
                <input type="password" name="confirmpassword" value="<?= $confirmpassword ?>" placeholder="Confirm Password">
                <div class="form__control">
                    <label for="avatar">User Avatar</label>
                    <input type="file" name="avatar" id="avatar">
                </div>
                <button type="submit" name="submit" class="custom-btn">Sign Up</button>
                <small>Already have an account? <a href="signin.php">Sign In</a></small>
            </form>
        </div>
    </section>

    <script src="<?= ROOT_URL ?>js/main.js"></script>
</body>

</html>