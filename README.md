# Week 1 atm_challenge_2020

### The code


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
