ACCEPT WhatIsTheMinimumQuantityForSet2 PROMPT 'What Is The Minimum Quantity For Set 2'
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
MINUS
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=&WhatIsTheMinimumQuantityForSet2;