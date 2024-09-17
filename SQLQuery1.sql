WITH cte AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1)


SELECT 
dteday,
season,
a.yr, -- appends from year columns and it's the first table that we had
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders* price AS revenue,
riders * price - COGS AS profit
FROM cte a
left join cost_table b
on a.yr = b.yr --connects the cte and cost_table by connecting it via year
