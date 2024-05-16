-- Step 1: Get top 5 LDGS_ADDR per AGE_RANGE
WITH TopLDGS_ADDR AS (
    SELECT AGE_RANGE, LDGS_ADDR
    FROM (
        SELECT AGE_RANGE, LDGS_ADDR, 
               ROW_NUMBER() OVER (PARTITION BY AGE_RANGE ORDER BY COUNT(*) DESC) as row_num
        FROM travel_data
        WHERE AGE_RANGE IN ('20대', '30대', '40대', '50대', '60대 이상')
        GROUP BY AGE_RANGE, LDGS_ADDR
    ) as ranked
    WHERE row_num <= 5
)

-- Step 2: Get top 5 LDGS_NM per LDGS_ADDR within each AGE_RANGE including road name address
SELECT AGE_RANGE, LDGS_ADDR, LDGS_NM, LDGS_ROAD_NM_ADDR, visit_count
FROM (
    SELECT t.AGE_RANGE, t.LDGS_ADDR, t.LDGS_NM, t.LDGS_ROAD_NM_ADDR, COUNT(*) as visit_count,
           ROW_NUMBER() OVER (PARTITION BY t.AGE_RANGE, t.LDGS_ADDR ORDER BY COUNT(*) DESC) as row_num
    FROM travel_data t
    JOIN TopLDGS_ADDR a ON t.AGE_RANGE = a.AGE_RANGE AND t.LDGS_ADDR = a.LDGS_ADDR
    GROUP BY t.AGE_RANGE, t.LDGS_ADDR, t.LDGS_NM, t.LDGS_ROAD_NM_ADDR
) as ranked_hotels
WHERE row_num <= 5;
