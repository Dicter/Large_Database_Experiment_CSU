create tablespace tabspace_J521
datafile 'D:\Database\Tablespace\tabspace_J521.dbf' size 3072M;

create table T_major1_J521(
    MNo char(2) primary key,
    MName varchar(30),
    MLoc varchar(40) check(MLoc in ('��У��','��У��','��У��','����У��','����У��')),
    MDean varchar(20)
)tablespace tabspace_J521;

create table T_stud1_J521
(
    SNo char(20) primary key,
    SName varchar(20),
    Sex varchar(10) check(sex in('��','Ů','����','����')),
    Tel varchar(15),
    Email varchar(24) check(email like '%@%.%'),
    Birthday date check((TO_CHAR('yyyymmdd'))>='19990731'),
    BNo char(20) references T_stud_J521(SNo),
    Mno char(2) references T_major_J521(MNo)
)tablespace tabspace_J521;

EXEC RECORDTIME('���²���רҵǰ');
insert into T_major1_J521 values ('01','�������ѧ�뼼��','��У��','������һ');
insert into T_major1_J521 values ('02','������','��У��','�����˶�');
insert into T_major1_J521 values ('03','������','��У��','��������');
EXEC RECORDTIME('���²���רҵ��');

EXEC RECORDTIME('���²���ѧ��ǰ');
insert into T_stud1_J521 values ('8202180502','�Ŷ�','Ů','17877781802','123456789c@qq.com','21-5��-2000','8202180502','02');
insert into T_stud1_J521 values ('8202180521','�����','��','17877781898','tom-goh@outlook.com','06-5��-2000','8202180502','02');
insert into T_stud1_J521 values ('8202180501','��һ','��','17877781801','123456789b@qq.com','12-5��-2000','8202180502','02');
insert into T_stud1_J521 values ('8202180503','����','��','17877781803','123456789d@qq.com','14-5��-2000','8202180502','02');
insert into T_stud1_J521 values ('8202180504','����','Ů','17877781804','123456789e@qq.com','15-5��-2000','8202180502','02');
insert into T_stud1_J521 values ('8202180608','�Ű�','��','17877781808','123456789i@qq.com','01-5��-2000','8202180608','02');
insert into T_stud1_J521 values ('8202180605','����','Ů','17877781805','123456789f@qq.com','16-5��-2000','8202180608','02');
insert into T_stud1_J521 values ('8202180606','����','��','17877781806','123456789g@qq.com','17-5��-2000','8202180608','02');
insert into T_stud1_J521 values ('8202180607','����','Ů','17877781807','123456789h@qq.com','18-5��-2000','8202180608','02');
insert into T_stud1_J521 values ('8202180610','�ž�','Ů','17877781809','123456789j@qq.com','20-5��-2000','8202180608','02');

insert into T_stud1_J521 values ('8201180100','��һ','Ů','15906027689','987654321a@qq.com','21-10��-2000','8201180100','01');
insert into T_stud1_J521 values ('8201180102','�¶�','��','15906027688','987654321b@qq.com','22-10��-2000','8201180100','01');
insert into T_stud1_J521 values ('8201180103','����','Ů','15906027687','987654321c@qq.com','23-10��-2000','8201180100','01');
insert into T_stud1_J521 values ('8201180104','����','��','15906027686','987654321d@qq.com','24-10��-2000','8201180100','01');
insert into T_stud1_J521 values ('8201180105','����','��','15906027685','987654321e@qq.com','25-10��-2000','8201180100','01');
insert into T_stud1_J521 values ('8201180106','����','Ů','15906027684','987654321z@qq.com','26-10��-2000','8201180100','01');
insert into T_stud1_J521 values ('8201180300','����','��','15906027682','987654321f@qq.com','20-10��-2000','8201180300','01');
insert into T_stud1_J521 values ('8201180301','�°�','Ů','15906027682','987654321g@qq.com','27-10��-2000','8201180300','01');
insert into T_stud1_J521 values ('8201180302','�¾�','��','15906027681','987654321h@qq.com','28-10��-2000','8201180300','01');
insert into T_stud1_J521 values ('8201180303','��ʮ','��','15906027680','987654321i@qq.com','29-10��-2000','8201180300','01');

insert into T_stud1_J521 values ('8203181101','��һ','��','15985911469','456789123a@qq.com','22-1��-2000','8203181101','03');
insert into T_stud1_J521 values ('8203181102','���','Ů','15985911468','456789123b@qq.com','23-10��-2000','8203181101','03');
insert into T_stud1_J521 values ('8203181103','����','��','15985911467','456789123c@qq.com','24-10��-2000','8203181101','03');
insert into T_stud1_J521 values ('8203181104','����','��','15985911466','456789123d@qq.com','25-10��-2000','8203181101','03');
insert into T_stud1_J521 values ('8203181105','����','Ů','15985911465','456789123e@qq.com','26-1��-2000','8203181101','03');
insert into T_stud1_J521 values ('8203181301','����','��','15985911464','456789123f@qq.com','27-1��-2000','8203181301','03');
insert into T_stud1_J521 values ('8203181302','����','Ů','15985911463','456789123g@qq.com','28-1��-2000','8203181301','03');
insert into T_stud1_J521 values ('8203181303','���','��','15985911462','456789123h@qq.com','29-1��-2000','8203181301','03');
insert into T_stud1_J521 values ('8203181304','���','��','15985911461','456789123i@qq.com','30-1��-2000','8203181301','03');
insert into T_stud1_J521 values ('8203181305','��ʮ','Ů','15985911460','456789123j@qq.com','21-1��-2000','8203181301','03');
EXEC RECORDTIME('���²���ѧ����');

--����ʵ�������µı�ռ�
CREATE TABLE Name11(
    OName1 NVARCHAR2(1)
)tablespace tabspace_J521;

CREATE TABLE Name21(
    OName2 NVARCHAR2(1)
)tablespace tabspace_J521;

CREATE TABLE Name31(
    OName3 NVARCHAR2(1)
)tablespace tabspace_J521;

EXEC RECORDTIME('ȡ����ǰ');
INSERT INTO NAME11 (SELECT DISTINCT SUBSTR(OX,1,1) FROM ORIGINALX);
INSERT INTO NAME11 (SELECT DISTINCT SUBSTR(ONAME,1,1) FROM OriginalName);
INSERT INTO NAME21 (SELECT DISTINCT SUBSTR(ONAME,2,1) FROM OriginalName);
INSERT INTO NAME31 (SELECT DISTINCT SUBSTR(ONAME,3,1) FROM OriginalName);
EXEC RECORDTIME('ȡ������');

CREATE TABLE "#temp" AS (SELECT DISTINCT * FROM NAME11);   --������ʱ������DISTINCT ȥ�غ�����ݲ��뵽��ʱ����
truncate TABLE NAME11;   --���ԭ������
INSERT INTO NAME11 (SELECT * FROM "#temp");   --����ʱ�����ݲ��뵽ԭ����
DROP TABLE "#temp";  

CREATE TABLE "#temp" AS (SELECT DISTINCT * FROM NAME21);
truncate TABLE NAME21;
INSERT INTO NAME21 (SELECT * FROM "#temp");
DROP TABLE "#temp";  

CREATE TABLE "#temp" AS (SELECT DISTINCT * FROM NAME31);
truncate TABLE NAME31;
INSERT INTO NAME31 (SELECT * FROM "#temp");
DROP TABLE "#temp"; 

CREATE TABLE T_STUD_NAMES1_J521(
    STUDNAME NVARCHAR2(10)
)tablespace tabspace_J521;

EXEC RECORDTIME('��������ǰ');
INSERT INTO T_STUD_NAMES1_J521 (SELECT ONAME1||ONAME2||ONAME3 NAMES31 FROM NAME11,NAME21,NAME31 WHERE ROWNUM<=9000000);
INSERT INTO T_STUD_NAMES1_J521 (SELECT ONAME1||ONAME3 NAMES21 FROM NAME11,NAME31 WHERE ROWNUM<=1500000);
INSERT INTO T_STUD_NAMES1_J521 (SELECT ONAME1||ONAME2 NAMES22 FROM NAME11,NAME21 WHERE ROWNUM<=1500000);
EXEC RECORDTIME('����������');

CREATE TABLE "#temp" AS (SELECT DISTINCT * FROM T_STUD_NAMES1_J521);
truncate TABLE T_STUD_NAMES1_J521;
INSERT INTO T_STUD_NAMES1_J521 (SELECT * FROM "#temp");
DROP TABLE "#temp";  

--�����������ѧ�ţ�����Ҫ����λ���ɲ�����
CREATE TABLE T_STUD_SNOGH1_J521(SNOGH number(10)) tablespace tabspace_J521;
CREATE TABLE T_STUD_SNOEF1_J521(SNOEF number(10))tablespace tabspace_J521;
CREATE TABLE T_STUD_SNOCD1_J521(SNOCD number(10))tablespace tabspace_J521;
CREATE TABLE T_STUD_SNOAB1_J521(SNOAB varchar2(10))tablespace tabspace_J521;

CREATE OR REPLACE PROCEDURE SNOCREATE1
AS
TEMP INT;
BEGIN
    FOR TEMP IN 1..32 
        LOOP
            INSERT INTO T_STUD_SNOGH1_J521 values(TEMP);
            COMMIT;
        END LOOP;
    FOR TEMP IN 1..50 
        LOOP
            INSERT INTO T_STUD_SNOEF1_J521 SELECT 170000+TEMP*100+T_STUD_SNOGH1_J521.SNOGH FROM T_STUD_SNOGH1_J521;
            COMMIT;
        END LOOP;
    FOR TEMP IN 1..90
        LOOP
            INSERT INTO T_STUD_SNOCD1_J521 SELECT TEMP*1000000+T_STUD_SNOEF1_J521.SNOEF FROM T_STUD_SNOEF1_J521;
            COMMIT;
        END LOOP;
    FOR TEMP IN 1..80
        LOOP
            INSERT INTO T_STUD_SNOAB1_J521 SELECT substr(10000000000+TEMP*100000000+T_STUD_SNOCD1_J521.SNOCD,2,10) FROM T_STUD_SNOCD1_J521;
            COMMIT;
        END LOOP;
END;

EXEC RECORDTIME('����ѧ��ǰ');
EXEC SNOCREATE1;
EXEC RECORDTIME('����ѧ�ź�');

CREATE TABLE T_STUD_INFOR1_J521(
    SEX NVARCHAR2(2),
    TEL VARCHAR2(11),
    MAIL VARCHAR2(40),
    BIRTHDAY DATE
)tablespace tabspace_J521;

CREATE OR REPLACE PROCEDURE INPUTINFOR1 
AS
BEGIN
    FOR I IN 0..9999999 LOOP
    INSERT INTO T_STUD_INFOR1_J521(SEX,TEL,MAIL,BIRTHDAY) VALUES(GENDERCREATE,GENERATEPHONE,GENERATEMAIL,GENERATEBIRTH);
    END LOOP;
END;

select count(*) from T_STUD_INFOR1_J521;

EXEC RECORDTIME('����ѧ����Ϣǰ');
EXEC INPUTINFOR1;
EXEC RECORDTIME('����ѧ����Ϣ��');

CREATE TABLE T_STUDENT_EX31_J521(
    SNo VARCHAR2(10),
    SName NVARCHAR2(3),
    SEX NVARCHAR2(2),
    TEL VARCHAR2(11),
    MAIL VARCHAR2(30),
    BIRTHDAY DATE
)tablespace tabspace_J521;

EXEC RECORDTIME('����������ǰʱ���');
INSERT INTO T_STUDENT_EX31_J521(SNO,SNAME,SEX,TEL,MAIL,BIRTHDAY)
SELECT X.SNOAB,A.STUDNAME,B.SEX,B.TEL,B.MAIL,B.BIRTHDAY
FROM
(SELECT ROWNUM ROWNUMX, SNOAB FROM T_STUD_SNOAB1_J521) X,
(SELECT ROWNUM ROWNUMA,STUDNAME FROM T_STUD_NAMES1_J521) A,
(SELECT ROWNUM ROWNUMB, SEX,TEL,MAIL,BIRTHDAY FROM T_STUD_INFOR1_J521) B
WHERE ROWNUMA=ROWNUMB AND ROWNUMB = ROWNUMX;
EXEC RECORDTIME('�����������ʱ���');

DROP TABLE T_STUDENT_EX31_J521;

--���������ڸ�ʵ���ѧ����񣬸ñ��ʹ��ѧ�������Ϊ����
CREATE TABLE T_STUDENT_EX31_J521(
    SNo VARCHAR2(10) PRIMARY KEY,
    SName NVARCHAR2(3),
    SEX NVARCHAR2(2),
    TEL VARCHAR2(11),
    MAIL VARCHAR2(30),
    BIRTHDAY DATE
)tablespace tabspace_J521;

EXEC RECORDTIME('����������ǰʱ���');
INSERT INTO T_STUDENT_EX31_J521(SNO,SNAME,SEX,TEL,MAIL,BIRTHDAY)
SELECT X.SNOAB,A.STUDNAME,B.SEX,B.TEL,B.MAIL,B.BIRTHDAY
FROM
(SELECT ROWNUM ROWNUMX, SNOAB FROM T_STUD_SNOAB1_J521) X,
(SELECT ROWNUM ROWNUMA,STUDNAME FROM T_STUD_NAMES1_J521) A,
(SELECT ROWNUM ROWNUMB, SEX,TEL,MAIL,BIRTHDAY FROM T_STUD_INFOR1_J521) B
WHERE ROWNUMA=ROWNUMB AND ROWNUMB = ROWNUMX;
EXEC RECORDTIME('�����������ʱ���');


select * from timeRecord;