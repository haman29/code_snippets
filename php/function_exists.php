<?php
function hoge() {}
var_dump(function_exists(null));
var_dump(function_exists('hoge'));
var_dump(function_exists('var_dump'));
var_dump(function_exists('aaaaaa'));

/**
 * output
 *
 * bool(false)
 * bool(true)
 * bool(true)
 * bool(false)
 */

class Hoge {
    function fuga() {
        var_dump(method_exists($this, 'piyo'));
    }
    function piyo() {
    }
}
$hoge = new Hoge();
$hoge->fuga();

// output
// bool(true)
