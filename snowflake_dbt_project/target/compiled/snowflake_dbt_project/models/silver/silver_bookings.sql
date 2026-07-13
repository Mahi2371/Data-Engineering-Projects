


select
    booking_id,
    listing_id,
    booking_date,
    
    round(NIGHTS_BOOKED*BOOKING_AMOUNT,2)
 as total_amount,
    service_fee,
    cleaning_fee,
    booking_status,
    created_at
from AIRBNB.bronze.bronze_bookings