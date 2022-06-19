
select name, subject
from student as s, stu_marks as m
where s.roll_no = m.roll_num
and marks >=(select max(marks)
from stu_marks
 where roll_num = m.roll_num)
