<?php
var_dump(in_array(array('hoge' => true), array(true, false), true) === true);

var_dump(in_array('', array('', true, false), true) === true);
var_dump(in_array('', array(true, false), true) === false);

// var_dump(in_array(array('hoge' => ''), array('', true, false), true) === true);
// var_dump(in_array(array('hoge' => ''), array(true, false), true) === false);
