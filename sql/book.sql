-- 컬럼 자료형
-- not null: null을 허용하지 않음(필수 입력)
-- char(사이즈): 고정 사이즈 문자열
-- varchar2(사이즈): 가변 사이즈 문자열
-- primary key(기본키, 주키)
DROP TABLE book;
CREATE TABLE book (
    id          NUMBER          NOT NULL,
    title       VARCHAR2(50),
    author      VARCHAR2(20),
    price       NUMBER          DEFAULT 0,
    qty         NUMBER          DEFAULT 0,
    PRIMARY KEY(id)
);

-- 자료 입력
-- NVL(A, B): A가 NULL이면 B, NULL이 아니면 A
SELECT MAX(id) + 1 FROM book;

INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'OS', 'Wiley', 30700, 50);
INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'Java', 'OReily', 35000, 10);
INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'C++', '영진', 45000, 20);
INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'HTML5', '길벗', 30000, 15);
INSERT INTO book (id, title, author, price, qty)
VALUES ((SELECT NVL(MAX(id) + 1, 1) FROM book), 'Oracle', '한빛', 40000, 25);

-- 입력 자료 확인
SELECT * FROM book;
COMMIT;

SELECT title, price FROM book;
DELETE FROM book WHERE ID = 1;