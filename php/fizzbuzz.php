<?php
function clean()
{
    foreach (range(1, 100) as $i) {
        if ($i % 15 === 0) {
            echo 'fizzbuzz ';
        } else if ($i % 5 === 0) {
            echo 'buzz ';
        } else if ($i % 3 === 0) {
            echo 'fizz ';
        } else {
            echo $i . ' ';
        }
    }
}
function onliner()
{
    foreach(range(1,100) as $i) echo ($i % 15 === 0) ? 'fizzbuzz ' : (($i % 5 === 0) ? 'buzz ' : (($i % 3 === 0) ? 'fizz ' : $i . ' '));
}

# debug
clean();
echo "\n";
onliner();
echo "\n";
