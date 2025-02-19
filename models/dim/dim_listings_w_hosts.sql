WITH listingDim AS (
    SELECT *
    FROM {{ ref('dim_listings_cleaned') }}
),
hostsDim AS (
    SELECT * 
    FROM {{ ref('dim_hosts_cleansed') }}
)

SELECT
    l.listing_id,
    l.listing_name,
    l.room_type,
    l.minimum_nights,
    l.price,
    l.host_id,
    h.is_superhost as host_is_superhost,
    l.created_at,
    GREATEST(l.updated_at, h.updated_at) AS updated_at
FROM listingDim l
LEFT JOIN hostsDim h ON h.host_id = l.host_id