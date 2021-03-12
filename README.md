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
 => #<BankAccount:0x00007fde9fb1f0f0 @current_balance=0, @statement=#<Statement:0x00007fde9fb1f0a0 @acc_statement=[]>>
3.0.0 :002 > account.deposit("08/03/2021", 1000)
 => ["08/03/2021 || 1000.00 || || 1000.00"]
3.0.0 :003 > account.deposit("09/03/2021", 400)
 => ["08/03/2021 || 1000.00 || || 1000.00", "09/03/2021 || 400.00 || || 1400.00"]
3.0.0 :004 > account.withdrawal("10/03/2021", 250)
 => ["08/03/2021 || 1000.00 || || 1000.00", "09/03/2021 || 400.00 || || 1400.00", "10/03/2021 || || 250.00 || 1150.00"]
3.0.0 :005 > account.statement.print_statement
date || credit || debit || balance
10/03/2021 || || 250.00 || 1150.00
09/03/2021 || 400.00 || || 1400.00
08/03/2021 || 1000.00 || || 1000.00
 => ["date || credit || debit || balance", "10/03/2021 || || 250.00 || 1150.00", "09/03/2021 || 400.00 || || 1400.00", "08/03/2021 || 1000.00 || || 1000.00"]
```

![Image](https://github.com/day-katy/bank_tech_test/blob/main/images/bank_tech_test_example.png?raw=true)

To run the tests, run `rspec`

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

I have created these user stories from the above specifications.

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

In planning this project, I discerned that I would need:

- a method for depositing money
- a method for withdrawing money
- a way of keeping track of what the current balance is
- a way of keeping track of all of the transactions, to be printed out with the statement
- a method for printing the full bank statement

Using TDD as my guide, I approached this code as if I were trying to keep track of real-life finances. I would want to input the date and the amount of a deposit or withdrawal, and then when printing my statement I would want to know the dates of specific deposits and withdrawals, along with my overall balance. After testing and refactoring, I now have code that accomplishes the MVP of the specification, though not yet the edge cases.

### Further Planning

I decided to extract my code into three classes: BankAccount, Statement, and TransactionHistory. I decided I would need:

- a way for the transaction data to be stored in a TransactionHistory object
- for that TransactionHistory object to talk to Statement, so it could be printed and formatted correctly
- for BankAccount to handle the depositing and withdrawing (maybe renaming it as Transaction?)

## Edge Cases

What happens when a bank account goes below 0? Is there an overdraft limit?
What happens if a deposit or withdrawal is conducted in a different month? Different year?
