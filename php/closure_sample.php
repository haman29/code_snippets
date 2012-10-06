<?php
/**
 *  ぴーえいちぴーでくろーじゃーを書く
 *  @link http://dqn.sakusakutto.jp/2009/01/javascript_5.html
 */
function println($s) { print $s.PHP_EOL; };

/**
 *  関数の中の関数
 */
function outer() {
    function inner() {
        println('inner');
    }
}
outer(); // 何も表示しない
inner(); // inner()が呼ばれる

/**
 *  スコープに関しては,
 *  関数: 関数のスコープ
 *  クロージャ(無名関数): 変数のスコープ
 *  てな感じだと思う
 */
// 普通の関数
function speak() { println('speak'); }
speak();

// クロージャ
$speak = function () { println('closure'); };
$speak();

// クロージャの即座実行
call_user_func(function () { println('at once');});
// この書き方はsyntax error
// (function() { println('すぐさま実行'); })();

/**
 * 関数を返す関数
 */
function outer2() {
    return function () { println('inner2'); };
}
$func = outer2();
$func(); // inner2 と表示

// 変数を持たせる
function outer3() {
    $s = 'outer3';
    return function () use ($s) { println($s); };
}
$func = outer3();
$func(); // outer3 と表示

// 変数をインクリメントする
function outer4() {
    $i = 1;
    return function () use (&$i) {
        println($i);
        $i++;
    };
}
$func = outer4();
$func(); // 1
$func(); // 2
$func(); // 3

/* 実行結果
inner
speak
closure
at once
inner2
outer3
1
2
3

*/
