drop table customer_txn;
create table customer_txn(
   cust_id int NOT NULL,
   txn_date Date NOT NULL,
   txn_amt INT NOT NULL
   
);

INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (101,STR_TO_DATE('01-3-2022', '%d-%m-%Y'),500); 
INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (101,STR_TO_DATE('02-3-2022', '%d-%m-%Y'),400); 
INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (101,STR_TO_DATE('03-3-2022', '%d-%m-%Y'),900); 
INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (101,STR_TO_DATE('04-3-2022', '%d-%m-%Y'),800); 
INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (102,STR_TO_DATE('01-3-2022', '%d-%m-%Y'),1600);
INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (101,STR_TO_DATE('02-3-2022', '%d-%m-%Y'),2200); 
INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (103,STR_TO_DATE('04-3-2022', '%d-%m-%Y'),200); 
INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (103,STR_TO_DATE('05-3-2022', '%d-%m-%Y'),2200); 
INSERT INTO customer_txn (cust_id, txn_date, txn_amt) VALUES (103,STR_TO_DATE('08-3-2022', '%d-%m-%Y'),100); 
 

