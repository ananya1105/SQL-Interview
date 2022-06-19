drop table salary;
create table salary(
   emp_id INT NOT NULL,
   company VARCHAR(100) NOT NULL,
   salary INT NOT NULL
   
);
describe salary;
INSERT INTO salary (emp_id, company, salary) VALUES (1,'A',2341); 
INSERT INTO salary (emp_id, company, salary) VALUES (2,'A',341); 
INSERT INTO salary (emp_id, company, salary) VALUES (3,'A',15); 
INSERT INTO salary (emp_id, company, salary) VALUES (4,'A',15314); 
INSERT INTO salary (emp_id, company, salary) VALUES (5,'A',451); 
INSERT INTO salary (emp_id, company, salary) VALUES (6,'A',513); 
INSERT INTO salary (emp_id, company, salary) VALUES (1,'B',15); 
INSERT INTO salary (emp_id, company, salary) VALUES (2,'B',13); 
INSERT INTO salary (emp_id, company, salary) VALUES (3,'B',1154); 
INSERT INTO salary (emp_id, company, salary) VALUES (4,'B',1345); 
INSERT INTO salary (emp_id, company, salary) VALUES (5,'B',1221); 
INSERT INTO salary (emp_id, company, salary) VALUES (6,'B',234); 
INSERT INTO salary (emp_id, company, salary) VALUES (1,'C',2345); 
INSERT INTO salary (emp_id, company, salary) VALUES (2,'C',2645); 
INSERT INTO salary (emp_id, company, salary) VALUES (3,'C',2645); 
INSERT INTO salary (emp_id, company, salary) VALUES (4,'C',2652); 
INSERT INTO salary (emp_id, company, salary) VALUES (5,'C',65); 
select * from salary;

