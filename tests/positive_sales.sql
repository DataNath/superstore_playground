select
    *
from
    {{ref('stg_customer_sales')}}
where sales < 0