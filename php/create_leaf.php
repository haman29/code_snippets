<?php
// コピペ
function create_leaf($y,$t=null,$c=1)
{
    if($c>$y) return $t;
    return create_leaf($y,$t.str_repeat(" ",$y-$c).str_repeat("*",$c*2-1)."\n",++$c);
}
echo create_leaf(2);
