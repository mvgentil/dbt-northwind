with renamed as (
    select
        region_id as id,
        replace(region_description, '"', '') as description

        from 
            {{ref('raw_crm__region')}}
)

select * from renamed
