select 
    ID as payment_id,
    ORDERID as order_id,
    amount / 100 as amount,
    PAYMENTMETHOD as payment_method,
    STATUS,
    _BATCHED_AT
from {{ source('stripe', 'payment') }}
