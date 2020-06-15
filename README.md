# Week 1 atm_challenge_2020

### The code

3 classes have been creared: Atm, Account and Person.

The code allows a user to do a withdrawal and deposit of a certain amount.

It allows a user to get bills of 20, 10 and 5 out. 

Pin code is generated at a random number between 1000 and 9999, with the requirement that the number of digits be equal to 4.

The account has to have an owner for anything to work


### Dependencies

- Gemfile
- Rspec
- IRB
- Pry
- Bundler

### Setup

Forked from CraftAcademy/atm_challenge_2020 (https://github.com/CraftAcademy/library-challenge)

### Instructions

Load files
```
$ load 'person.rb'
$ load 'atm.rb'
$ load 'account.rb'
```

Create user
```
$ user = Person.new(name:'Thomas')
```

Create Account
```
$ user.create_account
```

Create ATM
```
$ atm = Atm.new
```

Deposit funds in account
```
$ user.deposit(100)
```

Withdraw funds from account
```
$ user.withdraw({amount:50, pin:user.pin_code, account:user.account, atm:atm})
```

### Acknowledgements

Extensive use of CraftAcademy course material to guide us through this challenge. Also listened to CraftAcademy demos regarding pry, irb, ruby, rspec.

Used Google for searching and sources of knowledge were mainly:

- ruby-for-beginners.rubymonstas.org
- Stack overflow
- https://medium.com/rubycademy
- Official ruby documentation https://ruby-doc.org/

### Updates / Improvements plans

- Add bills (eg. 100 and 50)
- Limit amount of deposit
- Limit amount of withdrawal

##### Licensed by MIT
