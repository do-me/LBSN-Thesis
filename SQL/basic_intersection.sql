-- Metrics for basic intersection between LBSN and locations
SELECT
    t1.id,
    extensions.hll_intersection (hll_union_agg (t1.user_hll), hll_union_agg (t2.user_hll)) AS users,
    extensions.hll_intersection (hll_union_agg (t1.post_hll), hll_union_agg (t2.post_hll)) AS posts,
    extensions.hll_intersection (hll_union_agg (t1.date_hll), hll_union_agg (t2.date_hll)) AS userdays
FROM
    social.community AS t1,
    spatial.place AS t2
GROUP BY
    t1.id
ORDER BY
    posts DESC
