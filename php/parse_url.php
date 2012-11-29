<?php
define('HTTP_URL', 'https://example.com/');
$parsed_url = parse_url(HTTP_URL);
$pattern = '/' . preg_quote("/{$parsed_url['host']}/", '/') . '/';

// example1
$url = HTTP_URL . 'frontparts/login_check.php';
var_dump($url);
var_dump($pattern);
if (preg_match($pattern, $url) === 0) {
    echo 'in';
    // SC_Utils_Ex::sfDispException();
} else {
    echo 'out';
}

// example1
$url2 = 'http://hoge.example.com/frontparts/login_check.php';
var_dump($url2);
var_dump($pattern);
if (preg_match($pattern, $url2) === 0) {
    echo 'in';
    // SC_Utils_Ex::sfDispException();
} else {
    echo 'out';
}
