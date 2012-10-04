#/bin/sh

# checkLoadAverage.sh
# @feature load averageを確認して指定の閾値以上の場合メールを送信する処理
# @link http://liginc.co.jp/programmer/archives/3143
# @usage ./checkLoadAverage.sh [THRESHOLD]

threshold=$1
la=`cat /proc/loadavg | awk '{print $1,$2,$3}'`
IFS=' '
set -- $la

# 連想配列
las_1=$1
las_10=$2
las_15=$3
for key in 1 10 15; do
    val=$(eval 'echo $las_'$key)
    if [ `echo "$threshold < $val" | bc` -eq 1 ]; then
        echo "$key分間のload averageが[$val]になっていて閾値[$threshold]を超えてます。"
    fi
done
