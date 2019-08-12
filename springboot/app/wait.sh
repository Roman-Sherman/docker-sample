#!/bin/sh

set -e

host="$1"
shift
user="$1"
shift
password="$1"
shift
cmd="$@"

# "コマンド &> /dev/null" で標準出力を全て捨てる
# http://www.m-bsys.com/linux/redirect-sample
echo "Waiting for mysql"
until mysql -h"$host" -u"$user" -p"$password" &> /dev/null
do
        >$2 echo -n "."
        sleep 1
done

>&2 echo "MySQL is up - executing command"
exec $cmd