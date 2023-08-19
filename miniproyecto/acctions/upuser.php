<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    require_once("connect.php");

    session_start();

    $idUser = intval($_SESSION["user_data"]["id"]);

    if(isset($_POST["name"]) && $_POST["name"] !== "" ){
        $name = $_POST["name"];
        $mysqli->query("UPDATE usuario SET name = '$name' WHERE id=$idUser");
    }
    if(isset($_POST["bio"]) && $_POST["bio"] !== "" ){
        $bio = $_POST["bio"];
        $mysqli->query("UPDATE usuario SET bio = '$bio' WHERE id=$idUser");
    }
    if(isset($_POST["psswrd"]) && $_POST["psswrd"] !== "" ){
        $psswrd = $_POST["psswrd"];
        $passHash = password_hash($psswrd, PASSWORD_DEFAULT);
        $mysqli->query("UPDATE usuario SET psswrd = '$passHash' WHERE id=$idUser");
    }
    if(isset($_POST["phone"]) && $_POST["phone"] !== "" ){
        $phone = $_POST["phone"];
        $mysqli->query("UPDATE usuario SET phone = '$phone' WHERE id=$idUser");
    }
    
    $stmt = $mysqli->query("SELECT * FROM usuario WHERE id=$idUser");

    if($stmt->num_rows === 1 ){
        $_SESSION["user_data"] = $stmt->fetch_assoc();
    }

    header("location: ../views/perfil.php");

}else{
    echo "No estas accediendo por el metodo post";
}
    
