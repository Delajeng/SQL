SELECT
    nvl(subcategory_name, 'NO SUBCATEGORY') AS subcategory_name
    ,COUNT(product_id) AS number_of_records
    ,CASE WHEN COUNT(PRODUCT_ID) = 1 THEN 'ONLY ONE'
       ELSE 'MORE THAN ONE' END AS QUANTITY_COMMENT
FROM PTBL_PRODUCT
NATURAL left join ptbl_subcategory 
group by subcategory_name 
order by subcategory_name;