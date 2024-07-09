#!/bin/bash
source ./tools/tb_function.sh

# Until now, we've been creating accounts on the same `ledger`.

# Let's create some accounts on different ledgers:
tb "create_accounts id=600 code=10 ledger=60,
                    id=601 code=10 ledger=61,
                    id=602 code=10 ledger=61,
                    id=603 code=10 ledger=60;"

# And we'll create a transfer between them:
tb "create_transfers id=60000 debit_account_id=600 credit_account_id=603 amount=100 ledger=60 code=10;"
# Uh oh! Only accounts on the same ledger can transfer directly to one another.
# Try modifying the command to send the transfer between the two accounts on the same ledger.

# We'll learn more about what ledgers are for in the next exercise...
