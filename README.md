# atm_challenge_2020
By Erik, Steve and Theodora

## The code:
An ATM application with 3 different classes written in Ruby

### The classes
The ATM 
A Person
The person's Account 

The ATM starts with 1000 dollars/Euros that it can deliver in 20, 10 or 5 denominations.

The person starts with a name and no money (like real life).

The person's account is created with their name and a random pin code and still, no money.

## Dependencies: 

RSpec is needed to run the tests available in ./spec/.

## Setup: 

Clone this repository 
Run bundler to install gems.

## Instructions: 

### irb</br>

### Load the class files</br>
require './lib/atm'</br>
require './lib/person'</br>
require './lib/account'</br>
require 'date'</br>

### Initiate a person</br>
your_name = Person.new(name: 'name')

### Initiate an account</br> 
your_name.create_account

### Initate the ATM</br> 
Atm.new 

### Deposit</br> 
your_name.deposit(amount)

### Withdraw</br>
your_name.withdraw(amount)



## Updates/improvment plans:

Create UI for this application

Refactor code.



Licensed under MIT license
