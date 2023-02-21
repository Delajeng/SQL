WITH myTable AS (
SELECT product_id, product_name, product_subcategory_id
        , rownum AS my_Row_Num
FROM ptbl_product)
SELECT product_id, product_name, product_subcategory_id
        , my_Row_Num
FROM myTable
WHERE my_Row_Num = 5;


SELECT product_id, product_name, product_subcategory_id
FROM ptbl_product 
OFFSET 4 rows FETCH NEXT 1 ROW ONLY;


WITH Numbers as 
(SELECT rownum AS My_Number FROM obj$ FETCH FIRST 999 ROWS ONLY)
SELECT My_Number, product_name
FROM Numbers N
LEFT JOIN ptbl_product P
ON N.My_Number = p.product_id;