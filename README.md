# ATM_challenge

### This week's challenge was to create an ATM program that can create an account, a person, deposit funds, withdraw them, create an account and deactivate the account.
### The program is written in Ruby.

## Key points
### - Learn about unit testing with RSpec 
### - Learn about Ruby classes, modules, methods and attributes
### - Learn about using double, class_double and instance_double
### - Learn about debugging and common techniques (like briding.pray)

## How to use
### Please clone this repository and open Ruby with the **IRB** command.
### To run the application, please type the following:
```
$ load './lib/atm_challenge_2021.rb'
$ load './lib/person.rb'
```

### Create a person

```
$ person = Person.new(:name 'Anastasia')
```

### Create an ATM

```
$ atm = ATM.new
```

### In the ATM you can withdraw cash , that takes the argument amount(integer) and pin number. It checks if the pin number is right, if the account is active and not expired also if there are suffiecient funds on the account and in the ATM. If this all checks out it will reduce the funds in the account and return a receipt.
