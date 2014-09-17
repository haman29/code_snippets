<?php
$str = "?>xxx<?php echo 'aaa'; ?>xxx<?php ";
echo eval($str); // => xxxaaaxxx
