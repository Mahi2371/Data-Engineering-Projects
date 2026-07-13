

select
    listing_id,
    host_id,
    property_type,
    room_type,
    city,
    country,
    accommodates,
    bedrooms,
    bathrooms,
    price_per_night,
    
    case
        when CAST(PRICE_PER_NIGHT AS INT) < 100 then 'low' when CAST(PRICE_PER_NIGHT AS INT) < 200 then 'medium' else 'high'
    end
 as price_per_night_tag,
    created_at
from AIRBNB.bronze.bronze_listings