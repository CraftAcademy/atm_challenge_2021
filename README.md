# atm_challenge_2020
By Sara Lundqvist & Sebastian Niewiadomski

We first created a own repository that we forked and pushed up everyting to by merging.
Then we realized that we should have forked the repo from CraftAcademy, which we did and then continued working with the project.
To see old commits please visit https://github.com/Saralundkvist86/atm


## The code
Atm_challenge_2020 application can create an Atm, a Person that has an Account. The Person can have cash in the pocket, or hold his money in his Account.

This is all possible by the 3 Ruby Classes, Atm, Person and Account which seperately holds methods for withdrawal, depostis and further


## Dependencies
source 'https://rubygems.org'

-gem 'rspec'

-gem 'pry'


## Setup
run irb/pry
>require './lib/account.rb'
>require './lib/atm.rb'
>require './lib/person.rb'


#### create a new person instance
>your_name.Person.new(name: 'your_name', pincode: 1234, account: :active)

Starting with 500$

#### Initiate an account
>your_name.create_account


#### Initiate the ATM
>atm = Atm.new


#### Deposit money
>your_name.deposit()


#### Withdraw
>your_name.withdraw()


