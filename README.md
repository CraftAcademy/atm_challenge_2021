## The Code

The code is solving the problems with withdrawing money from an ATM. It checks so the person who wants to make the withdraw has an active account, the right pincode, that the card has not expired and that the person has enough balance in the account to make the withdrawl.
It also makes sure the funds in the ATM are dedecuted after a withdraw. 

User stories:

As a User       
In order to make a withdrawal      
The ATM needs to have funds

As a User               
In order to know if my withdrawal was successful or unsuccessful               
I want to receive a message with my withdrawal details

As a Customer
In order to manage my funds
I need to have a personal account

As a Bank Customer              
To keep my funds secure             
I want a secure Pin code & an expiry date on my card that allows only me access to my funds

As a Bank Customer    
In order to withdraw funds in even amounts  
I want to receive funds in 5, 10 & 20$ bills

As an ATM operator             
In order to allow access to active customers             
I want to allow withdrawals from only active accounts

As an ATM operator      
In order to keep track of our costumers     
We want to assign each account to a separate person

As an ATM operator
In order for our costumers to withdraw funds
I need to make sure that we only allow withdrawals if there are funds available

## Dependencies 

We are writing the application in Ruby and are using RSpec to test that our functions are working correctly as we intendened them to. 
We therefor used the gem for RSpec and also the gem for Pry-byebug

## Setup

To get the code to your local device:
> git clone https://github.com/emtalen/atm_machine
or
> git clone https://github.com/robin-lillqvist/atm_machine

They are the same so it won't matter which one.

If you do not have bundler installed:
> gem install bundler 

## Instructions

To run our application we require you to have ruby installed on your computer.
To install Ruby you can use the command 
> brew install ruby


In IRB you can use these commands: 


Create your ATM machine with 1000 initially
> atm = Atm.new

Create the person with name Robin
> person = Person.new(name: 'Robin')

Set the cash in your persons pockets
> person.cash = your amount

Create your persons bank account
> person.create_account

Deposit 100 into bankaccount
> person.deposit(100)

Withdraw 500 from ATM into your pocket
> person.withdraw(amount: 500, pin: person.account.pin_code, account: person.account, atm: atm)

## Updates/Improvement plans

Right know we have no plans about updates but the next things to do would be to do the interface file for the user to easier interact with it. 

- #### Licence: MIT-license