<?php
$params = array('a' => 'hoge', 'b' => 'fuga');
$r = array_filter($params, function($v){
    return $v === 'hoge';
});
var_dump($r);
