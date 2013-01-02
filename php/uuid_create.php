<?php
// uuid を生成する string
$uuid_string = uuid_create(UUID_TYPE_RANDOM);
var_dump($uuid_string);

// uuid を 16進数 (16 byte) で表示する
$uuid_bin = pack("h*",  str_replace('-',  '',  $uuid_string));
var_dump($uuid_bin);

var_dump(uniqid());
var_dump(uniqid("", true));
