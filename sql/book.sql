-- �÷� �ڷ���
-- not null: null�� ������� ����(�ʼ� �Է�)
-- char(������): ���� ������ ���ڿ�
-- varchar2(������): ���� ������ ���ڿ�
-- primary key(�⺻Ű, ��Ű)
DROP TABLE book;
CREATE TABLE book (
    id          NUMBER          NOT NULL,
    title       VARCHAR2(50),
    author      VARCHAR2(20),
    price       NUMBER          DEFAULT 0,
    qty         NUMBER          DEFAULT 0,
    PRIMARY KEY(id)
);

-- �ڷ� �Է�
-- NVL(A, B): A�� NULL�̸� B, NULL�� �ƴϸ� A
SELECT MAX(id) + 1 FROM book;

INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'OS', 'Wiley', 30700, 50);
INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'Java', 'OReily', 35000, 10);
INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'C++', '����', 45000, 20);
INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'HTML5', '���', 30000, 15);
INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'Oracle', '�Ѻ�', 40000, 25);

-- �Է� �ڷ� Ȯ��
SELECT * FROM book;
COMMIT;

SELECT title, price FROM book;
DELETE FROM book WHERE ID = 1;