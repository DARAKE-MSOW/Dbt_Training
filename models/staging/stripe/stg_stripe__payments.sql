select 
    ID as payment_id,
    ORDERID as order_id,
    AMOUNT,
    PAYMENTMETHOD as payment_method,
    STATUS,
    _BATCHED_AT
from raw.stripe.payment
