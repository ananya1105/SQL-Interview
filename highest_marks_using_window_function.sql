with tab1 as (
select s.*, subject, marks, rank( ) over (partition by Name, Roll_No order by marks desc) as rn
from student as s
inner join stu_marks as m
on s.roll_no = m.roll_num
)
select Name, subject
from tab1 
where rn=1;