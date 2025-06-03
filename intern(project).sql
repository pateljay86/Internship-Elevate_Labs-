SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_price) AS total_monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    orders
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;


## Output:
"order_year"	"order_month"	"total_monthly_revenue"	"order_volume"
2023	           11	              2763201.95	        988
2023	           12	              3360869.91	        1222
2024	           1	              3667447.62	        1284
2024	           2	              3300225.42	        1173
2024	           3	              3756172.48	        1306
2024	           4	              3493861.41	        1213
2024	           5	              3590164.64	        1267
2024	           6	              3355548.13	        1190
2024	           7	              3760470.93	        1320
2024	           8	              3737818.32	        1308
2024	           9	              3526269.73	        1242
2024	          10	              3772435.39	        1355
2024	          11	              411218.88	            132
