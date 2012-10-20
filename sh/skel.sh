#!/bin/bash

# /etc/skel/ 上でごにょごにょするスクリプト
# /etc/skel/ は useradd 時に作成されるファイル/ディレクトリ群

# 公開鍵認証用のsetup
mkdir /etc/skel/.ssh/
touch /etc/skel/.ssh/authorized_keys
mkdir /etc/skel/public_html/
chmod 700 /etc/skel/.ssh/
chmod 600 /etc/skel/.ssh/authorized_keys
