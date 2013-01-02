<?php
var_dump(uniqid());
var_dump(uniqid("",  true));
// 先頭の10桁は乱数, 残りの13桁は uniqid()
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
var_dump(uniqid(mt_rand(pow(10, 9), mt_getrandmax())));
/*
string(13) "50daca6d1a80d"
string(23) "50daca6d1aa0d5.12691316"
string(23) "167647756750daca6d1aa5b"
string(23) "115897138450daca6d1aa80"
string(23) "179524958550daca6d1aaa1"
string(23) "147240183950daca6d1aac3"
string(23) "131247877450daca6d1aad9"
string(23) "177614188950daca6d1aaed"
string(23) "102000809050daca6d1ab0a"
string(23) "156839937950daca6d1ab63"
string(23) "197377666350daca6d1ab8e"
string(23) "119243617350daca6d1abc8"
string(23) "140743916950daca6d1abf2"
 */
