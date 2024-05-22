{{ config(materialized='table') }}

with sales as (
    select
        *
    from
        {{ref('stg_customer_sales')}}
),

returns as (
    select
        *
    from
        {{ref('stg_customer_returns')}}
)

select
    customer_name,
    sum(sales) as total
from
    sales
inner join
    returns
on
    sales.order_id=returns.order_id
group by
    1