#!/bin/sh

TESTS=`grep -e "^void test_" $1 | sed -e "s/void /    /" | sed -e "s/()/();/"`

cat <<EOF
void do_test()
{
$TESTS
}
EOF
