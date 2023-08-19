<?php
if(isset($_FILES["photo"])) {
    $dataimg = addslashes(file_get_contents($_FILES["phone"]["temp_name"]));
    var_dump($dataimg);

    require_once("connect.php");

    $idUser = intval($_SESSION["user_data"]["id"]);

    $mysqli->query("UPDATE usuario SET photo = '$dataimg' WHERE id=$idUser");

    echo "Imagen guardada";
}
