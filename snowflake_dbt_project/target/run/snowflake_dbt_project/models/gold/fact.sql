
  
    

create or replace transient table AIRBNB.gold.fact
    
    
    
    as (


with __dbt__cte__listings as (


with
    listings as (
        select
            listing_id,
            property_type,
            room_type,
            city,
            country,
            price_per_night_tag,
            listing_created_at
        from AIRBNB.gold.obt
    )
select *
from listings
),  __dbt__cte__hosts as (


with
    hosts as (
        select
            host_id,
            host_name,
            host_since,
            is_superhost,
            response_rate_quality,
            host_created_at
        from AIRBNB.gold.obt
    )
select *
from hosts
) select GOLD_obt.BOOKING_ID, GOLD_obt.LISTING_ID, GOLD_obt.HOST_ID,GOLD_obt.TOTAL_AMOUNT, GOLD_obt.SERVICE_FEE, GOLD_obt.CLEANING_FEE, GOLD_obt.ACCOMMODATES, GOLD_obt.BEDROOMS, GOLD_obt.BATHROOMS, GOLD_obt.PRICE_PER_NIGHT, GOLD_obt.RESPONSE_RATE

from

         AIRBNB.gold.obt as GOLD_obt
    

        
        left join
            __dbt__cte__listings as DIM_listings
            on GOLD_obt.listing_id = DIM_listings.listing_id
    

        
        left join
            __dbt__cte__hosts as DIM_hosts
            on GOLD_obt.host_id = DIM_hosts.host_id
    

    )
;


  