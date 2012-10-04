<?php
/**
 * Basic認証に用いる.htpasswdの文字列を生成する
 *
 * @usage php passgen.php [USERNAME] [PASSWORD] >> .htpasswd
 */

if ($argc !== 3) {
    fputs(STDERR, "usage: php passgen.php [USERNAME] [PASSWORD]\n");
    exit;
}
echo $argv[1] . ':' . crypt($argv[2]) . "\n";
