<?php
require_once "../models/usersModel.php";
if ($_POST) {

    $user = new users;
    $user->lastname = $_POST["lastname"];
    $user->firtname = $_POST["firtname"];
    $user->email = $_POST["mail"];
    $user->password = $_POST["password"];
    $user->addUser();
}
require_once "../views/includes/nav.php";
require_once "../views/register.php";
require_once "../views/includes/footer.php";
