with int_aggregate_by_region_territory as (
    select 
        r.description as region,
        count(t.id) as territory_count
    from {{ref('stg_crm__region')}} as r
    left join {{ref('stg_crm__territory')}} t
    on r.id = t.region_id
    group by region
)

select * from int_aggregate_by_region_territory