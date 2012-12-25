class Node {
public:
    Node(int n);  /* ���󥹥ȥ饯�� */
    int get();  /* ���Ǥ�������� */
    Node* next();  /* ���ΥΡ��ɤ�������� */

    void link(Node* n);
    
private:
    int m_data;
    Node* m_next;
};

class List {
public:
    List();

    int length();  /* ���ǿ���������� */
    Node* get_head();  /* ��Ƭ�ΥΡ��ɤ�������� */
    void add_head(Node* n);  /* ��Ƭ�˥Ρ��ɤ��ɲä��� */

private:
    int m_length;
    Node* m_head;
};
