<?php
function fibonacci($n)
{
    if ($n <= 1) return $n;
    return fibonacci($n-2) + fibonacci($n-1);
}
foreach(range(0, 10) as $i) echo fibonacci($i) . ' ';
