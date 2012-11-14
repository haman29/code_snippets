<?php
// system(), exec(), shell_exec() etc とたくさんあるが、exec()が上位互換らしい
// exec_shell() は `` (バックティック演算子)と同じ意味
// @link http://d.hatena.ne.jp/foldrr/20090327/1238096681

system('echo "system"'); // stdoutに表示
echo exec('echo "exec"') . PHP_EOL; // returnがstdout
echo shell_exec('echo "shell_exec"'); // returnがstdout
echo `echo "backtick"`; // shell_exec() と同じ意味

// return はstdoutの最後の行のみ, 全て取得したい場合は第2引数を指定する
echo exec('ls /', $output, $return_code);
var_dump($output);
var_dump($return_code);
