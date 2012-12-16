<?php
// 英数字のランダム文字列を10個生成する
function genPass($size = 8) {
    if ($size < 1) {
        return false;
    }
    $charlist_str = "abcdefghijklnmopqrstuvwxyzABCDEFGHIJKLNMOPQRSTUVWXYZ0123456789";
    $charlist_arr = preg_split('//', $charlist_str, -1, PREG_SPLIT_NO_EMPTY);
    $charlist_size = count($charlist_arr);
    $pass = '';
    foreach(range(1, $size) as $i) {
        $pass .= $charlist_arr[mt_rand(0, $charlist_size - 1)];
    }
    return $pass;
}

foreach(range(1, 10) as $i) echo genPass(8) . "\n";
