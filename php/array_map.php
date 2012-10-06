<?php
$a = range(1, 5); // 1, 2, 3, 4, 5 (size=5)
$callback = function ($i) { return $i * $i; };
var_dump(array_map($callback, $a));
/*
array(5) {
  [0]=>
  int(1)
  [1]=>
  int(4)
  [2]=>
  int(9)
  [3]=>
  int(16)
  [4]=>
  int(25)
}
 */

$a = range(1, 5); // 1, 2, 3, 4, 5 (size=5)
$b = range(10, 50, 10); // 10, 20, 30, 40, 50 (size=5)
$callback = function ($x, $y) { return $x * $y; };
var_dump(array_map($callback, $a, $b));
// これは引数の数が一致してないからエラー
// var_dump(array_map($callback, $a));
/*
array(5) {
  [0]=>
  int(10)
  [1]=>
  int(40)
  [2]=>
  int(90)
  [3]=>
  int(160)
  [4]=>
  int(250)
}
 */

// サイズの異なる配列を渡すと短い方の配列に空の要素が拡充される
$a = range(1, 10); // 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 (size=10)
$b = range(10, 50, 10); // 10, 20, 30, 40, 50 (size=5)
$callback = function ($x, $y) { return $x * $y; };
var_dump(array_map($callback, $a, $b));
/*
array(10) {
  [0]=>
  int(10)
  [1]=>
  int(40)
  [2]=>
  int(90)
  [3]=>
  int(160)
  [4]=>
  int(250)
  [5]=>
  int(0)
  [6]=>
  int(0)
  [7]=>
  int(0)
  [8]=>
  int(0)
  [9]=>
  int(0)
}
 */
