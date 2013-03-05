<?php
/**
 * str_replace() 時に '/'をエスケープしなくても期待通りの動きをすることを確認した
 */
$target_str = '/hoge/fuga/piyo.png';
$str_after_replace = str_replace('/fuga', '/strong', $target_str);
var_dump($str_after_replace); # => string(21) "/hoge/strong/piyo.png"

// ちなみにエスケープしようとすると置換されない
$str_after_replace = str_replace('\/fuga', '\/strong', $target_str);
var_dump($str_after_replace); # => string(19) "/hoge/fuga/piyo.png"

$target_str = 'main_image_large';
$target_str = str_replace('_large', '', $target_str);
$str_after_replace = str_replace('_', '_large_', $target_str);
var_dump($str_after_replace); # => string(19) "/hoge/fuga/piyo.png"
