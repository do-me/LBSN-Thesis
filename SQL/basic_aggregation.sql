-- Metrics for most common hashtags
SELECT
    hashtag,
    hll_cardinality (hll_union_agg (user_hll))::int AS "users",
    hll_cardinality (hll_union_agg (post_hll))::int AS "posts",
    hll_cardinality (hll_union_agg (date_hll))::int AS "userdays"
FROM
    topical._hashtag_latlng t1
GROUP BY
    hashtag
ORDER BY
    posts DESC
LIMIT 20
