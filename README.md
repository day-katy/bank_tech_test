# Bank tech test

This is a sample tech test provided by Makers Academy, completed during my tenth week of the bootcamp.

## Specification

### Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User Stories

```
As a client who has a bank account,
to keep track of my transactions,
I want to see the date, credit, debit and balance fields for each transaction.

As a client who makes bank transactions,
so I can keep track of my deposits and withdrawals,
I want to see the date I make a deposit or withdrawal.

As a client who makes bank transactions,
so I can keep track of my deposits,
I want to see the amount of deposit I am making.

As a client who makes bank transactions,
so I can keep track of my withdrawals,
I want to see the amount of withdrawl I am making.

As a client who makes bank transactions,
so I can keep track of my deposits,
I want to see the total balance of my account after each deposit or withdrawal.
```
