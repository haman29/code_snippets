<?php
$char_list_str = array_merge(range('a', 'z'), range('0', '9'), range('A', 'Z'));
$str = '';
foreach (array_rand($char_list_str, 5) as $k) {
    $str .= $char_list_str[$k];
}
var_dump($str);
