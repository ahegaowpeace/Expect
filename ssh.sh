#!/bin/bash

# Raspberry Pi old
TAR="【ユーザ名】:【ホスト名】"
PW="【パスワード】"

expect -c "
set timeout 5
spawn env LANG=C /usr/bin/ssh ${TAR}
expect \"password:\"
send \"${PW}\n\"
# プロセス制御をユーザに渡す
interact
"
