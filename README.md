Specification
 ```
You should be able to interact with the your code via a REPL like IRB or the JavaScript console.

(You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see
```

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00

```
```

User Stories based on the specification

As an account holder,
So I can top up my account balance,
I would like to be able to deposit money into my account.

As an account holder,
So I can take money out of my account,
I would like to be able to withdraw money.

As an account holder,
So I know how much money I have,
I would like to be able to check my balance.

As an account holder,
So that I can successfully budget,
I would like to be able to print a bank statement.

```
Progress update:

Currently, the BankAccount class has too many responsibilities.
In order to adhere to the Single Responsibility Principle, I will need to extract
some methods out into at least one other class.


