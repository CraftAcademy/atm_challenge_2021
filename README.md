# :money_with_wings: ATM CHALLENGE 2020

## The Project

This project will allow us to create an ATM machine so the user can withdraw and deposit money.
It will include all the features such as: creating and using a valid account with a pin code and a balance status.  
The project is done by **Test Driven Development** technique. Every feature added after they have passed testing

## Authors

Git Profiles:  
https://github.com/PaulineBA  
https://github.com/kermit-klein

## Dependencies/Installing

In order to use the app you will need the following;  
-- Ruby     (check https://github.com/rvm/ubuntu_rvm)  
-- Bundler  ($ gem install bundler)  
-- Rspec    (include rspec in Gemfile)  
-- IRB or Pry  (check https://github.com/pry/pry)


**To download**

>git clone https://github.com/kermit-klein/atm_challenge_2020.git 

or  

>git clone https://github.com/PaulineBA/atm_challenge_2020.git



## Terminal Instructions

Load files in IRB or Pry 
  ```
  >load “person.rb” ; load “atm.rb” ; load “account.rb”  
  ```
Create Person 
  ```
  >customer = Person.new(name:”Bernie”)  
  ```
Create ATM  
  ```
  >atm = Atm.new 
  ```
Create Account  
  ```
  >customer.create_account 
  ```
Deposit to Account 
  ```
  >customer.deposit(200)  
  ```
Withdraw from Account
  ```
  >customer.withdraw({amount:100,pin:customer.account.pin_code,account:customer.account,atm:atm})  
  ```
## User Stories Tested with RSpec

* As a Bank,
In order to identify accounts,
Created accounts must have a owner.

* As a Bank,
To create an account,
Accounts must have an owner first.

* As a Bank,
To have a limited lifetime accounts,
Accounts must have an expiry date.

* As a Customer,
In order to use my account,
My account must be created as active.

* As a Customer,
To close/freeze my account,
I can set it as deactivated.

* As a Bank,
In order to allow withdrawal,
ATM must have sufficient funds to work.

* As a Bank,
In order to pay out money,
Account must have enough money.

* As a Bank,
In order to pay out money,
ATM must have enough money.

* As a Bank,
To provide account security,
Reject withdrawal with wrong pin.

* As a Bank,
To provide account security,
Reject withdrawal with expired account.

* As a Bank,
To provide account security,
Reject withdrawal from disabled account.

* As a Customer,
To withdraw money,
Account must have enough balance.

* As a Customer,
To able to withdraw money,
I must have an account.

* As a Customer,
To able to withdraw/deposit money,
ATM machine must exist.

* As a Customer,
In order to increase my account balance,
I must deposit money to my account.

* As a Customer,
In order to deposit money to my account,
I need to have 250 funds to deposit.

## License
This project is licensed under the **MIT License**.
