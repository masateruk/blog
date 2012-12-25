class Node {
public:
    Node(int n);  /* コンストラクタ */
    int get();  /* 要素を取得する */
    Node* next();  /* 次のノードを取得する */

    void link(Node* n);
    
private:
    int m_data;
    Node* m_next;
};

class List {
public:
    List();

    int length();  /* 要素数を取得する */
    Node* get_head();  /* 先頭のノードを取得する */
    void add_head(Node* n);  /* 先頭にノードを追加する */

private:
    int m_length;
    Node* m_head;
};
