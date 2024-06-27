<?php
session_start();

if (isset($_GET['lang'])) {
    $_SESSION['lang'] = $_GET['lang'];
}

$lang = isset($_SESSION['lang']) ? $_SESSION['lang'] : 'en';

if ($lang == 'jp') {
    include 'lang/jp.php';
} else {
    include 'lang/en.php';
}
?>
