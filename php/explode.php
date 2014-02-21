<?php
function split_last_hyphen($str) {
    $pos = strrpos($str, '-');
    return array(mb_substr($str, 0, $pos), mb_substr($str, $pos+1));
}
var_dump(split_last_hyphen('hoge-fuga-1') === array('hoge-fuga', '1'));
var_dump(split_last_hyphen('hoge-fuga-2') === array('hoge-fuga', '2'));
var_dump(split_last_hyphen('hoge-fuga-3') === array('hoge-fuga', '3'));
var_dump(split_last_hyphen('hoge-fuga-34') === array('hoge-fuga', '34'));
var_dump(split_last_hyphen('hoge-fuga-100') === array('hoge-fuga', '100'));
var_dump(split_last_hyphen('ほげ-fuga-100') === array('ほげ-fuga', '100'));
