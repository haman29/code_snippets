<?php
class Hoge {
    public static function fuga() {
        echo 'fuga';
    }
}
class Hoge_Ex extends Hoge {

    // @override
    public static function fuga() {
        parent::fuga();
        echo 'fuga_ex';
    }
}
Hoge_Ex::fuga(); // fugafuga_ex
