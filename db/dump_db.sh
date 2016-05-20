#!/bin/bash

DB_NAME="thisismyjam"
DB_USER="thisismyjam"

cd "$(dirname "$0")"

DB_PASS=`cat ../secrets/mysql_password`

$(mysqldump -u${DB_USER} -p${DB_PASS} --single-transaction --skip-dump-date --skip-extended-insert ${DB_NAME} > ./dump.sql)
