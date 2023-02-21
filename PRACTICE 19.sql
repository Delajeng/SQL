SELECT
    to_char(transaction_date, 'YYYY-MM')
    ,SUM(actual_cost) AS total_actual_cost
    ,SUM(actual_cost) - LAG(SUM(ACTUAL_COST),1)
         OVER(ORDER BY to_char(transaction_date, 'YYYY-MM'))
         AS CHANGE_PREVIOUS_MONTH
    ,SUM(actual_cost) - LEAD(SUM(ACTUAL_COST),1)
         OVER(ORDER BY to_char(transaction_date, 'YYYY-MM'))
         AS CHANGE_NEXT_MONTH
FROM
    ptbl_transaction
GROUP BY
    to_char(transaction_date, 'YYYY-MM')
ORDER BY
    to_char(transaction_date, 'YYYY-MM');


SELECT
    transaction_date, actual_cost
    ,NTILE(10) OVER(ORDER BY transaction_date) AS BUCKETS
    ,ROW_NUMBER() OVER(ORDER BY transaction_date) AS THE_ROW_NUMBER
    ,RANK() OVER(ORDER BY transaction_date) AS THE_RANK_NUMBER
FROM
    ptbl_transaction;
    
    
    
    
    
    
    
    
    