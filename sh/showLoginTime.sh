#!/bin/bash

# @feature
#  月ごとのログイン時間を集計する
#  年は考慮されていない
# @usage
#  ./showLoginTime.sh [USERNAME]
# @author kyohei.hamada
last | gawk --assign name="$1" '
    $1 == name {
        date = $5
        h[date] = h[date] + substr($10, 2, 2) # hour
        m[date] = m[date] + substr($10, 5, 2) # minite
    }
    END {
        for (i in m) {
            h[i] = h[i] + int(m[i] / 60)
            m[i] = m[i] % 60
        }
        for (i in h) printf("(%s) %02d:%02d\n", i, h[i], m[i])
    }
'
exit $?
