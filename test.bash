#!/bin/bash
# SPDX-FileCopyrightText: 2022 Kazuma_Ohashi
# SPDX-License-Identifier: BSD-3-Clause

out=$(seq 5 | ./plus)
[ "$[out]" = 15 ] || ng $[LINENO]

out=$(echo あ | ./plus)
[ "$?" = 1 ]       || ng ${LINENO}
[ "${out}" = "" ]  || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]     || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
 exit $res
