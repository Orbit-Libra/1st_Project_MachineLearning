-- 사용자 생성
CREATE USER libra IDENTIFIED BY ksm0923;

-- 권한 부여
GRANT CONNECT, RESOURCE TO libra;

-- 테이블스페이스 생성
CREATE TABLESPACE LIBRA_DB
DATAFILE 'D:\workspace\project\Project_Libra\1st_Project_MachineLearning\db\LIBRA_DB.dbf'
SIZE 100M
AUTOEXTEND ON
NEXT 50M MAXSIZE UNLIMITED;

-- 테이블스페이스 사용자에 할당
ALTER USER libra DEFAULT TABLESPACE LIBRA_DB;
ALTER USER libra QUOTA UNLIMITED ON LIBRA_DB;

-- 종료 메시지
PROMPT Libra DB 및 사용자 생성 완료!
