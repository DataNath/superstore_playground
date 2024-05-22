select
    "Order ID" as order_id
from
    {{source('superstore_playground','superstore_returns')}}
where returned = 'Yes'