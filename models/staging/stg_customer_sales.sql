select
    "Order ID" as order_id,
    "Customer ID" as customer_id,
    "Customer Name" as customer_name,
    sales
from
    {{source('superstore_playground','superstore_orders')}}