

select *
from AIRBNB.STAGING.hosts


    where created_at > (select coalesce(max(created_at), '1900-01-01') from AIRBNB.bronze.bronze_hosts)
