{{
  config(
    materialized = 'view'
  )
}}
WITH listings AS (
    SELECT * FROM {{ ref('src_listing') }}
)
SELECT 
    listing_id,
    listing_name,
    room_type,
    -- handling 0 values
    CASE
        WHEN minimum_nights = 0 THEN 1
        ELSE minimum_nights
    END AS minimum_nights,
    host_id,
    -- Handling $ sign
    REPLACE(
        price_str,
        '$'
    ) :: NUMBER(
        10,
        2
    ) AS price,
    created_at,
    updated_at
FROM
    listings