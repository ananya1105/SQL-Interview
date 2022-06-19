with tab1 as (
select *,count(1) over (partition by company) as cnt, row_number() over (partition by company) as rn
from salary
),
tab2 as (
select *,
case when cnt%2=0 then round(cnt/2)
 else ceil(cnt/2)
 end as low,
 case when cnt%2=0 then round((cnt/2)+1)
 else ceil(cnt/2)
 end as high
from tab1
)
select emp_id, company, salary
from tab2
where rn = low or rn = high;

