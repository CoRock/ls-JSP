DROP TABLE Member;
CREATE TABLE Member (
    userid      VARCHAR2(50)    NOT NULL PRIMARY KEY,
    passwd      VARCHAR2(50)    NOT NULL,
    name        VARCHAR2(50)    NOT NULL,
    email       VARCHAR2(50),
    hp          VARCHAR2(50),
    zipcode     VARCHAR2(7),
    address1    VARCHAR2(200),
    address2    VARCHAR2(200),
    join_date   DATE            DEFAULT SYSDATE
);

SELECT * FROM Member;
INSERT INTO Member (userid, passwd, name, email)
VALUES ('kim', '1234', '梯繹熱', 'kim@naver.com');
INSERT INTO Member (userid, passwd, name, email)
VALUES ('hong', '1234', '�垮瘚�', 'hong@nate.com');
INSERT INTO Member (userid, passwd, name, email)
VALUES ('choi', '1234', '譆團熱', 'choi@nate.com');

SELECT name FROM Member
WHERE userid = 'kim' AND passwd = '1234';

SELECT name FROM Member
WHERE userid = 'kim' AND passwd = '1111';

-- rs.getInt("cnt")
-- rs.getInt(1)
SELECT COUNT(*) cnt FROM Member
WHERE userid = 'lee';

COMMIT;