SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
UNION ALL
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8;

SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
UNION
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8;

SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
INTERSECT
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8;

SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
MINUS
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8;

SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8
MINUS
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0;