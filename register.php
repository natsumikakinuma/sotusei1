<?php
include 'language.php';
include 'db_connection.php';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT); // パスワードをハッシュ化

    // データベースに新規ユーザーを追加
    $query = "INSERT INTO users (email, username, password, is_first_login) VALUES (?, ?, ?, 1)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('sss', $email, $username, $password);
    if ($stmt->execute()) {
        $_SESSION['username'] = $username;
        header("Location: profile.php"); // プロフィール登録ページにリダイレクト
        exit();
    } else {
        $error_message = "登録に失敗しました。";
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $language['register']; ?></title>
</head>
<body>
    <h2><?php echo $language['register']; ?></h2>
    <?php if (isset($error_message)) { echo "<p>$error_message</p>"; } ?>
    <form method="post" action="register.php">
        <?php echo $language['email']; ?>: <input type="email" name="email" required><br>
        <?php echo $language['username']; ?>: <input type="text" name="username" required><br>
        <?php echo $language['password']; ?>: <input type="password" name="password" required><br>
        <input type="submit" value="<?php echo $language['register']; ?>">
    </form>
    <p><a href="register.php?lang=en">English</a> | <a href="register.php?lang=jp">日本語</a></p>
</body>
</html>
