MERGE INTO PTBL_SUBCATEGORY S
USING PTBL_SUBCATEGORY_NEW N
ON (S.PRODUCT_SUBCATEGORY_ID = N.PRODUCT_SUBCATEGORY_ID)
WHEN MATCHED THEN
      UPDATE SET PRODUCT_CATEGORY_ID = N.PRODUCT_SUBCATEGORY_ID,
                 SUBCATEGORY_NAME = N.SUBCATEGORY_NAME
WHEN NOT MATCHED THEN
      INSERT (product_subcategory_id, product_category_id,
              subcategory_name)
     VALUES (N.product_subcategory_id, N.product_category_id,
            N.subcategory_name);