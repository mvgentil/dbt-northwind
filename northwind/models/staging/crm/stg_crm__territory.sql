with renamed_territory as (

    select
        territory_id as id,
        territory_description as territory_name,
        region_id as region_id
    from {{ ref('raw_crm__territory') }}
)

select * from renamed_territory