<?php
/**
 * 英数字のランダム文字列を生成する
 *
 * @param $size ランダム文字列のサイズ
 */
function generateRandomString($size = 8) {
    $char_list_str = array_merge(range('a', 'z'), range('0', '9'), range('A', 'Z'));

    if ($size < 1) {
        return false;
    }
    if ($size === 1) {
        return $char_list_str[array_rand($char_list_str, 1)];
    }
    $randomString = '';
    foreach (array_rand($char_list_str, $size) as $k) {
        $randomString .= $char_list_str[$k];
    }
    return $randomString;
}
var_dump(generateRandomString(-1));
var_dump(generateRandomString(0));
echo generateRandomString(1) . "\n";
echo generateRandomString(2) . "\n";
echo generateRandomString(3) . "\n";
echo generateRandomString(4) . "\n";
echo generateRandomString(5) . "\n";
echo generateRandomString(6) . "\n";
echo generateRandomString(7) . "\n";
echo generateRandomString(8) . "\n";
/** example **/
/*
bool(false)
bool(false)
6
EW
tvJ
k689
su8DO
w9BIKQ
x9KLOUZ
afjs4OQR
*/
