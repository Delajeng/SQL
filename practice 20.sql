SELECT category_name, subcategory_name, SUM(actual_cost) AS total_actual_cost
       ,case GROUPING_ID(category_name,subcategory_name)
        when 0 then 'original_data'
        when 1 then 'subtotal'
        when 3 then 'grand_total' end AS My_Group
FROM ptbl_transaction
NATURAL LEFT JOIN ptbl_product
NATURAL LEFT JOIN ptbl_subcategory
NATURAL LEFT JOIN ptbl_category
GROUP BY ROLLUP (category_name,subcategory_name)
ORDER BY category_name, subcategory_name;