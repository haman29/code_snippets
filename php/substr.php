<?php
// パス名とファイル名に分ける
$path = '/hoge/fuga/bar/customer_log';
$last_slash_pos = strrpos($path, '/') + 1;
var_dump(substr($path, $last_slash_pos));
// "customer_log"
var_dump(substr($path, 0, $last_slash_pos));
// "/hoge/fuga/bar/"
