#include <stdio.h>
#include <assert.h>
#define TEST_ASSERT(exp) assert(exp)

#include "list.h"

void test_add_head_when_list_is_empty()
{
    List l;
    Node n(11);

    l.add_head(&n);

    // 長さのチェック --- (a)
    TEST_ASSERT(l.length() == 1);
    // add_headで追加した要素が確かに取得できる --- (b)
    TEST_ASSERT(l.get_head()->get() == 11);
    // 11の要素しかふくまれないことを確認するassertion --- (c)
    TEST_ASSERT(l.get_head()->next() == NULL);
}

void test_add_head_when_list_is_not_empty()
{
    List l;
    Node n1(11), n2(12), n3(13);

    l.add_head(&n1);
    l.add_head(&n2);

    l.add_head(&n3);

    TEST_ASSERT(l.length() == 3);
    TEST_ASSERT(l.get_head()->get() == 13);

    // 以下はadd_head後も先に入っていた12, 11が変わらないことを確認するassertion -- (d)
    TEST_ASSERT(l.get_head()->next()->get() == 12);
    TEST_ASSERT(l.get_head()->next()->next()->get() == 11);
    TEST_ASSERT(l.get_head()->next()->next()->next() == NULL);
}

#include "test_driver.cpp"

int main()
{
    do_test();

    printf("OK\n");
    return 0;
}
