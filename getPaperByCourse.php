<?php
/**
 * Created by PhpStorm.
 * User: caizhili
 * Date: 16/4/7
 * Time: 下午6:36
 */
require_once('./sys/connect_database.php');

$course = $_GET["course_no"];

try {
    $sql = "SELECT `ep_No`,`c_No`,`ep_Name`,`ep_PublishTime`, `ep_Type` FROM `examinationpaper`"
        . "WHERE `c_No` = '{$course}'"
        . "ORDER BY `examinationpaper`.`ep_Name` ASC";

    $paras = $db->query($sql);
    if ($paras->rowCount() == 0) {
        $rows["count"] = 0;
        echo json_encode($rows);
    } else {
        $rows["count"] = $paras->rowCount();
        $rows["papers"] = $paras->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($rows);
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}