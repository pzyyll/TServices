<?php
/**
 * Created by PhpStorm.
 * User: caizhili
 * Date: 16/4/7
 * Time: 下午6:36
 */
require_once('./sys/connect_database.php');

try {
    $sql = "";
    //...
    $paras = $db->query($sql);
    //$paras = $db->exec($sql);
    if ($paras->rowCount() == 0) {
        //...
    } else {
        $rows = $paras->fetchAll(PDO::FETCH_ASSOC);
        //...
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}