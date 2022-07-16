#current date = exit_date
#tenure = exit_date-join_date / datediff(first_date, second_date) = fd-sd : return type is no of days
#where tenure is max
#floor, concat function
select * from HR;
with tab1 as (
select *,datediff(
case when exit_date is null then current_date() 
else exit_date
end, join_date )/365 as tenure
from HR)
select empid, concat(floor(tenure), ' years, ', floor((12*(tenure - floor(tenure)))),' months.') as time_period
from tab1 
where tenure >=ALL( select tenure from tab1)

