<?php
$servername = "localhost";
$username = "root";
$password = ""; // 適切なパスワードを使用してください
$dbname = "login_system"; // 実際のデータベース名に置き換えます

// データベース接続を作成
$conn = new mysqli($servername, $username, $password, $dbname);

// 接続をチェック
if ($conn->connect_error) {
    die("接続に失敗しました: " . $conn->connect_error);
}
?>
