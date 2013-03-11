#!/bin/bash

i=1
n=name

echo ${i}; # => 1
echo aa${n}`echo ${n}hogefuga`aa; # => aanamenamehogefugaaa

hoge=pro

if [ ${hoge} = pro ]; then
    echo propro
else
    echo other
fi
# => propro

dir=/hoge/fuga/
echo ${dir}
