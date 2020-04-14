# atm_challenge_2020
By Erik, Steve and Theodora

## The code:
An ATM application with 3 different classes written in Ruby

### The classes
- The ATM</br>
- A Person</br>
- The person's Account 

The ATM starts with 1000 dollars/Euros that it can deliver in 20, 10 or 5 denominations.

The person starts with a name and no money (like real life).

The person's account is created with their name and a random pin code and still, no money.

## Dependencies: 

RSpec is needed to run the tests available in ./spec/.

## Setup: 

Clone this repository 
Run bundler to install gems.

## Instructions: 

``` 
#irb

#Load the class files
require './lib/atm'
require './lib/person'
require './lib/account'

#Initiate a person
your_name = Person.new(name: 'name', pin_code: <four digits>, account: :active)

#Initiate an account
your_name.create_account(pin_code: <same as person's>, owner: your_name)

#Initate the ATM 
atm = Atm.new 

#Deposit
your_name.deposit(amount: <amount>)

#Withdraw
your_name.withdraw(amount: <amount>, atm: atm, pin_code <your pin code>)
```



## Updates/improvment plans:

* Create UI for this application
* Refactor code.
* Tests are now at the state where we actually can replace instance doubles with class instances.
* Accounts 'balance' attribute should be moved from the spec file to the account.rb, so that account balance is accessible in IRB.
* Person's account status should probably be :inactive when initialized, and receive :active when the account is created. Or, it should receive the specific account as it's 'account:' attribute.
* 'Missing account status' error message should be 'missing account' - the implementation needs modification accordingly



<br> Licensed under MIT license
