<?php
include 'language.php';
include 'db_connection.php';

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // フォームデータの取得
    $name = $_POST['name'];
    $gender = $_POST['gender'];
    $age = $_POST['age'];
    $contact = $_POST['contact'];
    $hair_type = $_POST['hair_type'];
    $hair_thickness = $_POST['hair_thickness'];
    $hair_density = $_POST['hair_density'];
    $scalp_condition = $_POST['scalp_condition'];
    $coloring_history = $_POST['coloring_history'];
    $current_hair_color = $_POST['current_hair_color'];
    $coloring_date = $_POST['coloring_date'];
    $used_color = $_POST['used_color'];
    $color_durability = $_POST['color_durability'];
    $black_dye_history = $_POST['black_dye_history'];
    $black_dye_date = $_POST['black_dye_date'];
    $used_product = $_POST['used_product'];
    $perm_history = $_POST['perm_history'];
    $perm_type = $_POST['perm_type'];
    $perm_date = $_POST['perm_date'];
    $perm_effect_duration = $_POST['perm_effect_duration'];

    // データベースにプロフィール情報を保存
    $query = "UPDATE users SET name = ?, gender = ?, age = ?, contact = ?, hair_type = ?, hair_thickness = ?, hair_density = ?, scalp_condition = ?, coloring_history = ?, current_hair_color = ?, coloring_date = ?, used_color = ?, color_durability = ?, black_dye_history = ?, black_dye_date = ?, used_product = ?, perm_history = ?, perm_type = ?, perm_date = ?, perm_effect_duration = ?, is_first_login = 0 WHERE username = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('ssissssssssssssssssss', $name, $gender, $age, $contact, $hair_type, $hair_thickness, $hair_density, $scalp_condition, $coloring_history, $current_hair_color, $coloring_date, $used_color, $color_durability, $black_dye_history, $black_dye_date, $used_product, $perm_history, $perm_type, $perm_date, $perm_effect_duration, $_SESSION['username']);
    $stmt->execute();
    $stmt->close();

    // プロフィール登録が完了したらウェルカムページにリダイレクト
    header("Location: welcome.php");
    exit();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $language['site_name']; ?> - <?php echo $language['profile_registration']; ?></title>
</head>
<body>
    <h1><?php echo $language['site_name']; ?></h1>
    <h2><?php echo $language['profile_registration']; ?></h2>
    <form method="post" action="profile.php">
        <?php echo $language['name']; ?>: <input type="text" name="name" required><br>
        <?php echo $language['gender']; ?>: <input type="text" name="gender" required><br>
        <?php echo $language['age']; ?>: <input type="number" name="age" required><br>
        <?php echo $language['contact']; ?>: <input type="text" name="contact" required><br>
        <?php echo $language['hair_type']; ?>: <input type="text" name="hair_type" required><br>
        <?php echo $language['hair_thickness']; ?>: <input type="text" name="hair_thickness" required><br>
        <?php echo $language['hair_density']; ?>: <input type="text" name="hair_density" required><br>
        <?php echo $language['scalp_condition']; ?>: <input type="text" name="scalp_condition" required><br>
        <?php echo $language['coloring_history']; ?>: <input type="text" name="coloring_history" required><br>
        <?php echo $language['current_hair_color']; ?>: <input type="text" name="current_hair_color" required><br>
        <?php echo $language['coloring_date']; ?>: <input type="date" name="coloring_date" required><br>
        <?php echo $language['used_color']; ?>: <input type="text" name="used_color" required><br>
        <?php echo $language['color_durability']; ?>: <input type="text" name="color_durability" required><br>
        <?php echo $language['black_dye_history']; ?>: <input type="text" name="black_dye_history" required><br>
        <?php echo $language['black_dye_date']; ?>: <input type="date" name="black_dye_date" required><br>
        <?php echo $language['used_product']; ?>: <input type="text" name="used_product" required><br>
        <?php echo $language['perm_history']; ?>: <input type="text" name="perm_history" required><br>
        <?php echo $language['perm_type']; ?>: <input type="text" name="perm_type" required><br>
        <?php echo $language['perm_date']; ?>: <input type="date" name="perm_date" required><br>
        <?php echo $language['perm_effect_duration']; ?>: <input type="text" name="perm_effect_duration" required><br>
        <input type="submit" value="<?php echo $language['register']; ?>">
    </form>
</body>
</html>
