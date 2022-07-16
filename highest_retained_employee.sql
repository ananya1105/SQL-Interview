#selecting everything from HR table

#Replace null with current date
# calculate new_exit-join = no_of_days, using datediff function
#Calculate the maximum of no_of_days, by using all keyword. 


with tab1 as(
select empid, join_date,
case 
when exit_date is null then current_date() 
else exit_date
end as exit_date_new
,  
datediff(case 
when exit_date is null then current_date() 
else exit_date
end,join_date) as no_of_days
from HR
)
select empid, concat(floor(no_of_days/365),' years, ',(no_of_days/365)%12,' months'),join_date, exit_Date_new
from tab1
where no_of_days >= all(select no_of_days from tab1 );

