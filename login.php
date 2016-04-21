<?php
/**
 * Created by PhpStorm.
 * User: caizhili
 * Date: 16/4/7
 * Time: 下午6:36
 */
require_once("./sys/connect_database.php");

$user = $_POST["user"];
$pwd = md5($_POST["pwd"]);
$uuid = $_POST["uuid"];

try {
    $sql = "select * from user where u_PhoneNo = '{$user}' AND u_Pwd = '{$pwd}'";
    $sql1 = "select * from user where u_Email = '{$user}' AND u_Pwd = '{$pwd}'";
    $sql2 = "select * from user where u_Name = '{$user}' AND u_Pwd = '{$pwd}'";
    //...
    $paras = $db->query($sql);
    $paras1 = $db->query($sql1);
    $paras2 = $db->query($sql2);

    if ($paras->rowCount() > 0 || $paras1->rowCount() >0 || $paras2->rowCount()>0) {
        //$rows = $paras->fetchAll(PDO::FETCH_ASSOC);
        //...
        $res["status"] = 1;
        $res["token"] = md5($uuid).';'.date("Ymd");

        //$sql = "insert into usertoken VALUES ('{$user}','{$res['token']}')";
        //$db->exec($sql);
        echo json_encode($res);
    } else {
        $res["status"] = 0;
        $res["token"] = "";
        echo json_encode($res);

    }
} catch (PDOException $e) {
    echo $e->getMessage();
}