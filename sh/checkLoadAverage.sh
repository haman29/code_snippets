#/bin/sh

# checkLoadAverage.sh
# @feature load averageを確認して指定の閾値以上の場合メールを送信する処理
# @link http://liginc.co.jp/programmer/archives/3143

threshold=$1
la=`cat /proc/loadavg | awk '{print $1,$2,$3}'`
echo $la
exit
IFS=' '
set -- $la

# 1分間のload average確認
diff1=`echo "$threshold < $1" | bc`
if [ $diff1 -eq 1 ]; then
    echo "1分間のload averageが[$1]になっていて閾値[$threshold]を超えてます。"
fi

# 10分間のload average確認
diff2=`echo "$threshold < $2" | bc`
if [ $diff2 -eq 1 ]; then
    echo "10分間のload averageが[$2]になっていて閾値[$threshold]を超えてます。"
fi

# 15分間のload average確認
diff3=`echo "$threshold < $3" | bc`
if [ $diff3 -eq 1 ]; then
    echo "15分間のload averageが[$3]になっていて閾値[$threshold]を超えてます。"
fi

echo 'end'
