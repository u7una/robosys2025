#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Yuna Furuhata
# SPDX-License-Identifier: BSD-3-Clause
ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0
chmod +x plus
out=$(./plus 20 晴れ)
echo "$out" | grep -q "薄めのジャケット" || ng "$LINENO" 
echo "$out" | grep -q "日中は日差しが熱くなるかも" || ng "$LINENO"

[ "$res" = 0 ] && echo "OK"
exit $res
