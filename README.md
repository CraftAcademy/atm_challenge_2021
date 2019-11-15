# ATM Challenge 2019
The program lets you create a Person and an ATM, the Person can create an Account which funds can be deposited to or withdrawn from using the ATM.

## The code
---
Something about the Person class?

Something about the Account class?

Something about the Atm class?

Something about TDD/RSpec?

## Dependencies
---
Written in Ruby v2.6.3

Unit tests using RSpec v3.9

## Setup
----
#### Clone repository
```
git clone https://github.com/sundqvistjohan/atm_challenge_2019.git
cd atm_challenge_2019
```
or
```
git clone https://github.com/EevanR/atm_challenge_2019.git
cd atm_challenge_2019
```

#### Install dependencies
Install RSpec using bundler:
```
bundle install
````

## Instructions
---
In a Ruby shell of your choice, (e.g. irb or pry):
```
load "lib/person.rb"
```

#### Create your objects
*Replace `<name>` with your persons name.*
```ruby
# Create an ATM
atm = Atm.new
# Create a person
person1 = Person.new(name: '<name>')
# Create a bank account belonging to the person
person1.create_account
```
#### Actions available to the user
*Replace `<amount>` with your chosen amount.*
```ruby
# Give the person some cash to start with
person1.cash = <amount> 
# Deposit cash into account
person1.deposit(<amount>) 
# Withdraw <amount> from account using atm
person.withdraw(amount: <amount>, pin: person1.account.pin_code, account: person1.account, atm: atm) 
```

## Acknowledgements
---
Special thanks to CraftAcademy and its coaches for instructions and support. Thanks to the creators of Ruby and RSPec, StackOverflow, adam-p for his <a href="https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet">Markdown Cheatsheet</a>

## Updates/Improvement plans
---
Refactoring etc

## License
---
Created under the <a href="https://en.wikipedia.org/wiki/MIT_License">MIT License</a>.