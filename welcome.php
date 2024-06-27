<?php
include 'language.php';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $language['site_name']; ?> - <?php echo $language['welcome']; ?></title>
</head>
<body>
    <h1><?php echo $language['site_name']; ?></h1>
    <h2><?php echo $language['welcome']; ?>, <?php echo $_SESSION['username']; ?>!</h2>
    <p><?php echo $language['successfully_logged_in']; ?></p>
    <a href="logout.php"><?php echo $language['logout']; ?></a>
</body>
</html>
