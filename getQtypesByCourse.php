<?php
/**
 * Created by PhpStorm.
 * User: caizhili
 * Date: 16/4/7
 * Time: 下午6:36
 */
require_once('./sys/connect_database.php');

$course = $_GET["c_No"];

try {
    $sql = "SELECT * FROM `qtype_view` where c_No = '{$course}' ORDER BY qtt_Aut ASC, qt_Aut DESC";
    //...
    $paras = $db->query($sql);
    //$paras = $db->exec($sql);
    if ($paras->rowCount() == 0) {
        $res["count"] = 0;
        $res["qtypes"] = "";

        echo json_encode($res);
    } else {
        $rows =
        $res["count"] = $paras->rowCount();
        $res["qtypes"] = $paras->fetchAll(PDO::FETCH_ASSOC);;
        echo json_encode($res);
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}