<?php
$regexp = '#^HTTP/.*\s+(2\d{2}|3\d{2})\s#i';
var_dump(preg_match($regexp, 'HTTP/1.1 200 ok') == 1);
var_dump(preg_match($regexp, 'HTTP/1.1 201 ok') == 1);
var_dump(preg_match($regexp, 'HTTP/1.1 202 ok') == 1);
var_dump(preg_match($regexp, 'HTTP/1.1 210 ok') == 1);
var_dump(preg_match($regexp, 'HTTP/1.1 300 ok') == 1);
var_dump(preg_match($regexp, 'HTTP/1.1 301 ok') == 1);
var_dump(preg_match($regexp, 'HTTP/1.1 302 ok') == 1);

var_dump(preg_match($regexp, 'HTTP/1.1 400 ok') == 0);
var_dump(preg_match($regexp, 'HTTP/1.1 404 ok') == 0);
var_dump(preg_match($regexp, 'HTTP/1.1 500 ok') == 0);
var_dump(preg_match($regexp, 'HTTP/1.1 540 ok') == 0);

// echo "\n";
// $regexp = '/200|302/i';
// var_dump(preg_match($regexp, 'HTTP/1.1 200 ok') == 1);
// var_dump(preg_match($regexp, 'HTTP/1.1 201 ok') == 0);
// var_dump(preg_match($regexp, 'HTTP/1.1 302 ok') == 1);
// var_dump(preg_match($regexp, 'HTTP/1.1 202 ok') == 0);
