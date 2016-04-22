<?php
/**
 * Created by PhpStorm.
 * User: caizhili
 * Date: 16/4/7
 * Time: 下午5:03
 */
require_once("./sys/connect_database.php");
//require_once "connect_database.php";

$sql = "SELECT * FROM `courses` ORDER BY `l_No`, c_Name ASC";

try {
    $arr = $db->query($sql);

    if ($arr->rowCount() == 0) {
        $res["count"] = 0;
        $res["course"] = "";

        echo json_encode($res);
    } else {
        $arrs = $arr->fetchAll(PDO::FETCH_ASSOC);
        $res["count"] = $arr->rowCount();
        $res["course"] = $arrs;

        echo json_encode($res);
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}