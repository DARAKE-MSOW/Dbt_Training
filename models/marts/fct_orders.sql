with orders as (
select 
    order_id,
    customer_id,
    order_date,
    status
from {{ref('stg_jaffle_shop__orders')}}
),

payments as (
select 
    order_id,
    amount

from {{ref('stg_stripe__payments')}}
where status = 'success'
)

select 
    payments.order_id,
    customer_id,
    order_date,
    sum(amount) as amount

from payments
    inner join orders using(order_id)
group by order_id,customer_id,order_date