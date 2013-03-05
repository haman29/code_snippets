<?php
foreach(range(1, 10) as $a){
    var_dump(hash('md5',  '111' . microtime()));
}
