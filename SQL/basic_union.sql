-- Metrics for basic union of two tables, LBSN and spatial
SELECT
    id,
    place_guid,
    geom_center,
    hll_cardinality (hll_union (t1.user_hll, t2.user_hll))::int AS users,
    hll_cardinality (hll_union (t1.post_hll, t2.post_hll))::int AS posts,
    hll_cardinality (hll_union (t1.date_hll, t2.date_hll))::int AS userdays
FROM
    social.community AS t1,
    spatial.place AS t2
