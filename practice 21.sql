SELECT p.product_id, p.product_name, p.product_subcategory_id
FROM ptbl_product P
JOIN ptbl_subcategory S
ON p.product_subcategory_id = s.product_subcategory_id
WHERE product_category_id = 1;


SELECT product_id, product_name, product_subcategory_id
       ,(SELECT min(transaction_date)
        FROM ptbl_transaction T
        where product_id = p.product_id) as First_Transaction
FROM ptbl_product P;



SELECT product_id, product_name, product_subcategory_id
FROM ptbl_product P
WHERE exists
        (select product_id
        from ptbl_transaction T
        where T.product_id = P.product_id);