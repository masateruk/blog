#include <stdlib.h>
#include <assert.h>
#include "list.h"

Node::Node(int n)
    : m_data(n), m_next(NULL)
{
}

int Node::get()
{
    return m_data;
}

Node* Node::next()
{
    return m_next;
}

void Node::link(Node* n)
{
    assert(m_next == NULL);
    m_next = n;
}

List::List()
    : m_length(0), m_head(NULL)
{
}

int List::length()
{
    return m_length;
}

Node* List::get_head()
{
    return m_head;
}

void List::add_head(Node* n)
{
    m_length++;
    n->link(m_head);
    m_head = n;
}
