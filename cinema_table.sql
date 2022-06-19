create schema cinema;
use cinema;
drop table cinema_tickets;
create table cinema_tickets(seat_number varchar(100) not null, occupancy int);
insert into cinema_tickets(seat_number, occupancy) values('A1',1),('A2',1),('A3',0),('A4',0),('A5',0),('A6',0),
('A7',1),('A8',1),('A9',0),('A10',0),('B1',0),('B2',0),('B3',0),('B4',1),('B5',1),('B6',1),
('B7',1),('B8',0),('B9',0),('B10',0),('C1',0),('C2',1),('C3',0),('C4',1),('C5',1),('C6',0),
('C7',1),('C8',0),('C9',0),('C10',1);
with tab1 as (
select *,lead(occupancy,1) over (partition by substr(seat_number,1,1)  order by substr(seat_number,2,-1)) as s1,
lead(occupancy,2) over (partition by substr(seat_number,1,1) order by substr(seat_number,2,-1)) as s2,
lead(occupancy,3) over (partition by substr(seat_number,1,1) order by substr(seat_number,2,-1)) as s3,
lead(seat_number,3) over (order by substr(seat_number,2,-1)) as next_seat
from cinema_tickets
),
tab2 as(
select *,occupancy+s1+s2+s3 as score  from tab1)
select seat_number,next_seat from tab2 where score = 0;
