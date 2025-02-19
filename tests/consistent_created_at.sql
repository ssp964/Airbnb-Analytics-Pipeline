SELECT *
FROM {{ ref('dim_listings_cleaned') }} l
INNER JOIN {{ ref('fct_reviews') }} r
ON l.listing_id = r.listing_id
WHERE l.created_at >= r.review_date