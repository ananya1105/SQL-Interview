with tab1 as (
select * from customer_txn order by txn_date
),
tab2 as (
select *, sum(txn_amt) over (partition by cust_id order by txn_date ) as cumm_txn
from  tab1
order by cust_id, txn_date
),
final as (
select *,
 row_number() over (partition by cust_id order by cumm_txn ) as rn
from tab2
where cumm_txn>=2000
)
select cust_id, txn_date, cumm_txn
 from final where rn = 1;