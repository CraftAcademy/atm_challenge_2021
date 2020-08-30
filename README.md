


## The code 
- We split the challenge into 3 classes which are represented in different .rb files. 
- Through the code the user has access to withdrawals and deposits.
- The pin code the ATM takes is a 4 digits number and when an instance of the account class is created a random pin code is generated. 
- Bills of 20, 10 and 5 out are available in the ATM

### Dependencies
Gemfile
Rspec
IRB
Pry
Bundler

### Setup 
Download the repo
Run Bundle Install

### - Instructions 
Instructions

Load files
```
$ load 'person.rb'
$ load 'atm.rb'
$ load 'account.rb'
```
Create user
```
$ user = Person.new(name:'Name')
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
Craft Academy guides and study material.

### Updates/Improvements plans 
Build the front end for the virtual ATM.

### License 
All code is licensensed under MIT.


### Folder structure
Tests --> spec folder
Implementation --> lib
Settings files --> parent folder