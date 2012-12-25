#include <stdio.h>
#include <assert.h>
#define TEST_ASSERT(exp) assert(exp)

#include "list.h"

void test_add_head_when_list_is_empty()
{
    List l;
    Node n(11);

    l.add_head(&n);

    // Ĺ���Υ����å� --- (a)
    TEST_ASSERT(l.length() == 1);
    // add_head���ɲä������Ǥ��Τ��˼����Ǥ��� --- (b)
    TEST_ASSERT(l.get_head()->get() == 11);
    // 11�����Ǥ����դ��ޤ�ʤ����Ȥ��ǧ����assertion --- (c)
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

    // �ʲ���add_head���������äƤ���12, 11���Ѥ��ʤ����Ȥ��ǧ����assertion -- (d)
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
