<?php
$array = array('a', 'b', 'c');
list($a, $b) = each($array); // listは連想配列を無視しているぽい
echo "$a $b" .PHP_EOL;
list($a, $b) = each($array);
echo "$a $b" .PHP_EOL;
list($a, $b) = each($array);
echo "$a $b" .PHP_EOL;
/*
0 a
1 b
2 c
 */

$array = array('a' => 1, 'b' => 2, 'c' => 3);
list($key, $value) = each($array);
echo "$key $value" . PHP_EOL;
list($key, $value) = each($array);
echo "$key $value" . PHP_EOL;
list($key, $value) = each($array);
echo "$key $value" . PHP_EOL;
/*
a 1
b 2
c 3
 */
