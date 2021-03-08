# Bank tech test

This is a sample tech test provided by Makers Academy, completed during my tenth week of the bootcamp.

To run this code, fork and clone this repository, then run

```
rspec --init
bundle install
```

An example of what this code looks like in IRB:

```
➜  bank_tech_test git:(main) ✗ irb -r './lib/bank_account.rb'
3.0.0 :001 > account = BankAccount.new
 => #<BankAccount:0x00007fe5ab1f9d00 @current_balance=0, @acc_statement=[]>
3.0.0 :002 > account.deposit("08/03/2021", 1000)
 => ["08/03/2021 || 1000.00 || || 1000.00"]
3.0.0 :003 > account.deposit("09/03/2021", 400)
 => ["08/03/2021 || 1000.00 || || 1000.00", "09/03/2021 || 400.00 || || 1400.00"]
3.0.0 :004 > account.withdrawal("10/03/2021", 500)
 => ["08/03/2021 || 1000.00 || || 1000.00", "09/03/2021 || 400.00 || || 1400.00", "10/03/2021 || || 500.00 || 900.00"]
3.0.0 :005 > account.print_statement
 => ["date || credit || debit || balance", "10/03/2021 || || 500.00 || 900.00", "09/03/2021 || 400.00 || || 1400.00", "08/03/2021 || 1000.00 || || 1000.00"]
3.0.0 :006 > puts account.print_statement
date || credit || debit || balance
10/03/2021 || || 500.00 || 900.00
09/03/2021 || 400.00 || || 1400.00
08/03/2021 || 1000.00 || || 1000.00
```

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

Deposit

```
Input || Output
08/03/2021, 1000.00 || 08/03/2021, 1000.00
09/03/2021, 500.00 || 09/03/2021, 1500.00
10/03/2021, 00.00 || 10/03/2021, 1500.00
```

Withdrawal (continuing from above bank account)

```
Input || Output
10/03/2021, 1000.00 || 10/03/2021, 500.00
11/03/2021, 100.00 || 11/03/2021, 400.00
```

Printed Bank Statement

```
date || credit || debit || balance
08/03/2021 || 1000.00 || || 1000.00
09/03/2021 || 500.00 || || 1500.00
10/03/2021 || 00.00 || || 1500.00
11/03/2021 || || 1000.00 || 500.00
12/03/2021 || || 1000.00 || 400.00
```

## Planning

I'll need:

- a method for depositing money
- a method for withdrawing money
- a way of keeping track of what the current balance is
- a way of keeping track of all of the transactions, to be printed out with the statement
- a method for printing the full bank statement

## Edge Cases

What happens when a bank account goes below 0? Is there an overdraft limit?
What happens if a deposit or withdrawal is conducted in a different month? Different year?
