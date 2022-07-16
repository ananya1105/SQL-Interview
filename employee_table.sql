create schema employee;
use employee;
drop table HR;
create table HR(empid varchar(10), join_date date not null, exit_date date);
-- empid stayed longest in the company. 
-- inserting employee_id, join_date, exit_date
-- remember 'Y' indicates yyyy(2022) and 'y' is yy(22)
insert into HR value(101,STR_TO_DATE('01-3-2022', '%d-%m-%Y'),STR_TO_DATE('10-05-2010','%d-%m-%Y'));
insert into HR value(102,str_to_date('11-04-1998','%d-%m-%Y'),null);
insert into HR value(104,str_to_date('19-06-1996','%d-%m-%Y'),str_to_date('10-05-2022','%d-%m-%Y'));
insert into HR value(106,str_to_date('15-08-2000','%d-%m-%Y'),str_to_date('10-12-2010','%d-%m-%Y'));
insert into HR value(105,str_to_date('10-12-2006','%d-%m-%Y'),null);
insert into HR value(100,str_to_date('26-11-2008','%d-%m-%Y'),str_to_date('10-05-2010','%d-%m-%Y'));
insert into HR value(109,str_to_date('30-09-2000','%d-%m-%Y'),str_to_date('10-05-2020','%d-%m-%Y'));
insert into HR value(111,str_to_date('12-02-2022','%d-%m-%Y'),str_to_date('10-05-2022','%d-%m-%Y'));
insert into HR value(131,str_to_date('11-05-2009','%d-%m-%Y'),null);
select * from HR;