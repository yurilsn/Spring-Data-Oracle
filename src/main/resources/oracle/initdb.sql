connect system/oracle
alter session set "_ORACLE_SCRIPT"=true;
--**********************************
--Esquema regesc
--**********************************

create tablespace regesc datafile '/opt/oracle/oradata/regesc01.dbf' size 100M online;
create tablespace idx_regesc datafile '/opt/oracle/oradata/idx_regesc01.dbf' size 100M;
create user regesc identified by regesc default tablespace regesc temporary tablespace temp;
alter user regesc quota unlimited on regesc;
grant resource to regesc;
grant connect to regesc;
grant create view to regesc;
grant create procedure to regesc;
grant create materialized view to regesc;
alter user regesc default role connect, resource;
exit;
