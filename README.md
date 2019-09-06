The ATM challenge 2019
======================

## The code

The project consists of three main classes; `Atm`, `Account` and `Person`.
The Atm class contains methods to:
 * check if it self posesses sufficient funds 
 * check if the users account balance contains enough to perform the transaction
 * 
 * withdraw money
 * 

## Dependecies
The project is written in **Ruby** (v2.6.3).  
Testing is implemented with **RSpec** (v3.8).  
Gems used: `rspec`

## Setup
### To obtain the code:  
`git clone https://github.com/shsteindorsson/atm_challenge_2019.git`  

### To install dependesies:
Assuming [Bundler](https://bundler.io/) is installed:  
Run  `bundler`  from the root folder of the project.

## To run tests
From the root folder of the project, run:  
`rspec`  

To run a specific test:  
`rspec spec/name-of-file_spec.rb`

## The user stories
```
As a programmer
In order to produce good quality code
I want to work in a test driven way and unit test my code
```
```
As a User       
In order to make a withdrawal      
The ATM needs to have funds
```
```
As a User
In order to know if my withdrawal was successful or unsuccessful
I want to receive a message with my withdrawal details
```
```
As an ATM operator
In order for the right person to make a withdrawal
I want each person to have a separate account
```
```
As an ATM operator
In order to ensure that an Account holder can only withdraw funds that he has balance for
I want to allow a withdrawal only if there are sufficient funds in the account
```
```
As an ATM operator
In order for our costumers to withdraw funds
I need to make sure that we only allow withdrawals if there are funds available
```
```
As a Customer              
To keep my funds secure             
I want a secure Pin code & an expiry date on my card that allows only me access to my funds
```
```
As an ATM operator             
In order to allow access to active customers             
I want to allow withdrawals from only active accounts
```
```
As a Bank Customer    
In order to withdraw funds in even amounts  
I want to receive funds in 5, 10 & 20$ bills
```
```
As a Customer
In order to manage my funds
I need to have a personal account
```
```
As an ATM operator      
In order to keep track of our costumers     
We want to assign each account to a separate person
```
```
As a person
to be able to use banking services to manage my funds,
I would like to be able to create a bank account
```
```
As a Person with a Bank Account,
in order to be able to put my funds in the account,
I would like to be able to make a deposit
```
```
As a Person without a Bank Account,
In order to prevent me from using the wrong bank account,
I should NOT be able to to make a deposit.
```

## Acknowledgements
The code in this project is based on code from [Craft Academy](https://craftacademy.se).  
### Contributors
[Luca Lobacher](https://github.com/lucamarial)  

[Sverrir Steindorsson](https://github.com/shsteindorsson)

## License
This project is made available under the [MIT-License](https://opensource.org/licenses/MIT).

<br>

![](https://raw.githubusercontent.com/shsteindorsson/shsteindorsson.github.io/master/images/craft.jpg)