<?php
class Hoge
{
    public static function func()
    {
        var_dump(__class__);
    }
}
class Fuga extends Hoge
{
    public static function func()
    {
        parent::func();
        var_dump(__class__);
    }
}
Hoge::func(); // string(4) "Hoge"
Fuga::func(); // string(4) "Hoge"\n string(4) "Fuga"
