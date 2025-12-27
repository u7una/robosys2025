#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Yuna Furuhata
# SPDX-License-Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0
chmod +x clothes_advice
out=$(echo 20| ./clothes_advice)
status=$?

[ "$status" -eq 0 ] || ng "$LINENO"
echo "$out" | grep -q "薄めのジャケット" || ng "$LINENO" 
echo "$out" | grep -q "日中は日差しが熱くなるかも" || ng "$LINENO"

echo "abc" | ./clothes_advice > /dev/null 2>&1
[ "$?" -ne 0 ] || ng "$LINENO"

[ "$res" = 0 ] && echo "OK"
exit $res
