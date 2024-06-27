<?php
include 'language.php';
include 'db_connection.php'; // データベース接続ファイルをインクルード

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT username, password, is_first_login FROM users WHERE username = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('s', $username);
    $stmt->execute();
    $stmt->bind_result($username_db, $password_db, $is_first_login);
    $stmt->fetch();
    $stmt->close();

    if (password_verify($password, $password_db)) {
        $_SESSION['username'] = $username_db;

        if ($is_first_login == 1) {
            header("Location: profile.php");
            exit();
        } else {
            header("Location: welcome.php");
            exit();
        }
    } else {
        $error_message = $language['login_error'];
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $language['login']; ?></title>
</head>
<body>
    <h2><?php echo $language['login']; ?></h2>
    <?php if (isset($error_message)) { echo "<p>$error_message</p>"; } ?>
    <form method="post" action="login.php">
        <?php echo $language['username']; ?>: <input type="text" name="username" required><br>
        <?php echo $language['password']; ?>: <input type="password" name="password" required><br>
        <input type="submit" value="<?php echo $language['login']; ?>">
    </form>
    <p><a href="login.php?lang=en">English</a> | <a href="login.php?lang=jp">日本語</a></p>
    <p><a href="register.php"><?php echo $language['register']; ?></a></p>
</body>
</html>
