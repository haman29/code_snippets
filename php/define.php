<?php
error_reporting(E_ALL);
define('HOGE', 'hoge');
var_dump(HOGE);
define('HOGE', 'fuga');
var_dump(HOGE);


/**
 * output
 *
 * string(4) "hoge"
 * PHP Notice:  Constant HOGE already defined in /home/hamada/code_snippets/php/define.php on line 5
 * PHP Stack trace:
 * PHP   1. {main}() /home/hamada/code_snippets/php/define.php:0
 * PHP   2. define() /home/hamada/code_snippets/php/define.php:5
 * 
 * Notice: Constant HOGE already defined in /home/hamada/code_snippets/php/define.php on line 5
 * 
 * Call Stack:
 *     0.0002     626136   1. {main}() /home/hamada/code_snippets/php/define.php:0
 *     0.0005     626712   2. define() /home/hamada/code_snippets/php/define.php:5
 * 
 * string(4) "hoge"
 */
