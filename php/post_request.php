<?php
/**
 * post request sample
 */
$url = 'http://www.php.net/search.php';
$data = array(
    'pattern' => 'htmlspe',
    'show' => 'quickref',
);
$options = array(
    'http' => array(
        'method' => 'POST',
        'header' => "Content-Type: application/x-www-form-urlencoded\r\n",
        'content' => http_build_query($data),
    )
);
$contents = file_get_contents($url, false, stream_context_create($options));
print_r($contents); # => www.php.net から検索結果が返却される
