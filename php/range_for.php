<?php
$max = 100000;

$start = microtime(true);
foreach(range(0, $max) as $v) {}
$end = microtime(true);
echo $end - $start . PHP_EOL;

$start = microtime(true);
for ($i = 0; $i <= $max; $i++) {}
$end = microtime(true);
echo $end - $start . PHP_EOL;

/*
0.065792798995972
0.013935089111328
 */
