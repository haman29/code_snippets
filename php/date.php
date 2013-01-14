<?php
// 問1
echo date('YmdHis') . substr(date('u'), 0, 3);
echo "\n";

// 問2
$hoge = '123';
echo sprintf("%05d", $hoge);
echo "\n";

// 問3
$status = "";
$hoge = $status == "" ? "no" : "yes";
echo $hoge;
