SELECT FOOD_TYPE, REST_ID, REST_NAME , FAVORITES from REST_INFO
where (FOOD_TYPE , FAVORITES) IN (SELECT FOOD_TYPE , max(FAVORITES)
                                 from REST_INFO GROUP BY FOOD_TYPE)
order by FOOD_TYPE DESC;