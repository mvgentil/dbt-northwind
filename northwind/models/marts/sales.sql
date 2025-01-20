with sales as (
    select * from {{ ref('stg_crm__region') }}
)

select * from sales