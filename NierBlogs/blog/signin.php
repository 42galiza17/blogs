<?php
require 'config/constants.php';


$username_email = $_SESSION['signin-data']['username_email'] ?? null;
$password = $_SESSION['signin-data']['password'] ?? null;

unset($_SESSION['signin-data']);
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NIER - SIGN IN</title>
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
            <h2>SIGN IN</h2>
            <?php if (isset($_SESSION['signup-success'])) : ?>
                <div class="alert__message success">
                    <p>
                        <?= $_SESSION['signup-success'];
                        unset($_SESSION['signup-success']);
                        ?>
                    </p>
                </div>
            <?php elseif (isset($_SESSION['signin'])) : ?>
                <div class="alert__message error">
                    <p>
                        <?= $_SESSION['signin'];
                        unset($_SESSION['signin']);
                        ?>
                    </p>
                </div>
            <?php endif ?>
            <form action="<?= ROOT_URL ?>signin-logic.php" method="POST">
                <input type="text" name="username_email" value="<?= $username_email ?>" placeholder="Username or Email">
                <input type="password" name="password" value="<?= $password ?>" placeholder="Password">
                <button type="submit" name="submit" class="custom-btn">Sign In</button>
                <small>Don't have account? <a href="signup.php">Sign Up</a></small>
            </form>
        </div>
    </section>

    <script src="<?= ROOT_URL ?>js/main.js"></script>
</body>

</html>