select 
    ID as payment_id,
    ORDERID as order_id,
    {{cents_to_dollars("amount")}} as amount,
    PAYMENTMETHOD as payment_method,
    STATUS,
    _BATCHED_AT
from {{ source('stripe', 'payment') }}
