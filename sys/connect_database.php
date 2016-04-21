<?php
/**
 * Created by PhpStorm.
 * User: caizhili
 * Date: 16/1/19
 * Time: 下午2:32
 */
header('Content-type:text/html;charset="UTF-8" ');
$DB_NAME = "ep_bank";
$DB_HOST = "localhost";
$DB_USER = "root";
$DB_PWD = "mysql";

$db = new PDO("mysql:dbname={$DB_NAME};host={$DB_HOST}", $DB_USER, $DB_PWD);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->query("set names 'utf8'");
