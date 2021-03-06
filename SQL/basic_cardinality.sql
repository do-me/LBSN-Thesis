-- Metrics for most basic HLL cardinalities by LBSN
SELECT
    id,
    hll_cardinality (user_hll)::int AS users,
    hll_cardinality (post_hll)::int AS posts,
    hll_cardinality (date_hll)::int AS userdays
FROM
    social.community
GROUP BY
    id
