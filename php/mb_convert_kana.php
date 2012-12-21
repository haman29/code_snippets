<?php
# 半角文字を全角文字のい変換する

# A ... 「半角」英数字を「全角」に変換します
# K ... 「半角カタカナ」を「全角カタカナ」に変換します。
# V ... 濁点付きの文字を一文字に変換します。"K", "H" と共に使用します。
$zenkaku = mb_convert_kana("iphone4%,.-=;: ﾊﾏﾀﾞ", 'AKV', 'UTF-8');
var_dump($zenkaku);
// string(52) "ｉｐｈｏｎｅ４％，．－＝；： ハマダ"
