<?php
# 半角文字を全角文字に変換する
# @link http://d.hatena.ne.jp/uunfo/20120126/1327577357 変換されない文字

$zenkaku = mb_convert_kana("iphone4%,.-=;: ﾊﾏﾀﾞ", 'AKVS', 'UTF-8');
var_dump($zenkaku);
// => string(54) "ｉｐｈｏｎｅ４％，．－＝；：　ハマダ"

$hankaku = mb_convert_kana("ｉｐｈｏｎｅ４％，．－＝；： ハマダはまだ", 'aksh', 'UTF-8');
var_dump($hankaku);
// => string(39) "iphone4%,.-=;: ﾊﾏﾀﾞﾊﾏﾀﾞ"
