<?php
/**
 * Created by PhpStorm.
 * User: caizhili
 * Date: 16/4/7
 * Time: 下午6:36
 */
require_once('./sys/connect_database.php');

$email = $_POST["user"];
$pwd = md5($_POST["pwd"]);

try {
    $sql = "SELECT u_ID FROM `user` ORDER BY `u_ID` DESC LIMIT 1";

    $id = intval($db->query($sql)->fetch(PDO::FETCH_ASSOC)["u_ID"]) + 1;
    //var_dump($id);
    if (!empty($email) && !empty($pwd)) {
        $sql = "insert into user(u_ID, u_PhoneNo, u_Pwd) VALUES('{$id}','{$email}','{$pwd}')";

        //$paras = $db->query($sql);
        $paras = $db->exec($sql);
        if ($paras == 0) {
            $res["reg"]["reg_status"] = 0;
            $res["reg"]["mess"] = "reg fail";

            echo json_encode($res);
        } else {
            //$rows = $paras->fetchAll(PDO::FETCH_ASSOC);
            //...
            $res["reg"]["reg_status"] = 1;
            $res["reg"]["mess"] = "suceess";
            echo json_encode($res);
        }
    } else {
        $res["reg"]["reg_status"] = 0;
        $res["reg"]["mess"] = "reg fail";

        echo json_encode($res);
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}