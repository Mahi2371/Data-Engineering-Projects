


select
    
        SILVER_bookings.*,
    
        SILVER_listings.HOST_ID, SILVER_listings.PROPERTY_TYPE, SILVER_listings.ROOM_TYPE, SILVER_listings.CITY, SILVER_listings.COUNTRY, SILVER_listings.ACCOMMODATES, SILVER_listings.BEDROOMS, SILVER_listings.BATHROOMS, SILVER_listings.PRICE_PER_NIGHT, silver_listings.PRICE_PER_NIGHT_TAG, SILVER_listings.CREATED_AT AS LISTING_CREATED_AT,
    
        SILVER_hosts.HOST_NAME, SILVER_hosts.HOST_SINCE, SILVER_hosts.IS_SUPERHOST, SILVER_hosts.RESPONSE_RATE, SILVER_hosts.RESPONSE_RATE_QUALITY, SILVER_hosts.CREATED_AT AS HOST_CREATED_AT
    
from

         AIRBNB.silver.silver_bookings as SILVER_bookings
    

        
        left join
            AIRBNB.silver.silver_listings as SILVER_listings
            on SILVER_bookings.listing_id = SILVER_listings.listing_id
    

        
        left join
            AIRBNB.silver.silver_hosts as SILVER_hosts
            on SILVER_listings.host_id = SILVER_hosts.host_id
    
