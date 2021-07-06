# 			ATM_Challenge
##This Project has been developed by: Blake, Janko and Jaime.

#### What does our code?

Our code will simulate the behaviour of a real ATM.

How?


##### User/Atm will:

1. Withdraw money.
2. Capable of deposit money on clients account/ Create account.
3. Capable of recognize different sad paths like: Card Expired, Wrong ping, Account check.


###### A list of the test passed can be found futher below**



##### Gems requiered:
rspec and pry.

##### Setup instructions:

1. Download this repository: https://github.com/JaimeCrz/ATM_Challenge 
2. You will need ruby if not install use the follow tutorial (Keep in mind your OS!) : https://www.ruby-lang.org/en/documentation/installation/
2. Install the following gems if you do not own them. How?:
   
    Head do the main directory of the ATM_Challenge to install Rspec.
    use: $gem install bundler

    Followed by: $ bundle install

    To install pry follow official documentation link provided here:

    https://www.sitepoint.com/pry-a-simple-start/


##### How to use?

1. Head to the directory where you saved your files with your terminal using: cd "path"

2. Load the files with: irb: load './lib/person.rb'  /// load './lib/atm.rb' /// load './lib/account.rb'

3. Create an ATM with : atm = Atm.new

4. Create an user: person = Person.new(name: 'Thomas')

5. Give the user some money: person.cash = Amount you desire.

6. Creates an account for your user: person.create_account (do not use the name of the person, use the command as written.)

7. Inactivate and reactivate user account: person.account.inactivate \\ person.account.activate

8. User is capable of deposit his money with: person.deposit(amount) and is able to withdraw with: person.withdraw(amount)


##### We want to thank Craft Academy/Craftoverflow to help us with this project and our colleges. 

##### Plans to update are on hold at the moment but it's in need of refactoring.



##### **Test passed:

- Account:
-  check the length of a number
-  is expected to have an expiry date on initialize
-  is expected to have :active status on initialize
-  deactivates account using the class method
-  is expected to have an owner
-  is expected to raise error if no owner is set
  
- Atm:
-  rejects withdraw if the card is expired
-  rejects withdrawal if the account is disabled
-  rejects withdraw if the pin is wrong
-  reject withdraw if ATM has insufficient funds
-  rejects withdraw if account has insufficient funds
-  allow withdraw if the account has enough balance.
-  has 1000$ on initialize
-  funds are reduced at withdraw
  
- Person
-  is expected to have a :name on initialize
-  is expected to raise an error if no name is set
-  it is expected to have a :cash attribute with the value of 0 on initialize
-  is expected to have a :account attribute

- can create an Account
-  of Account class
-  with himself as an owner

- can manage funds if an account been created
-  can deposit funds
-  funds are added to the account balance - deducted from cash
-  can withdraw funds
-  withdraw is expected to raise an error if no ATM is passed in
-  funds are added to cash - deducted from account balance

- can not manage funds if no account has been created do
-    can't deposit funds


###### This work is under MIT (free software license) quote/link us uppon usage.

We worked from this repo:
https://github.com/JaimeCrz/ATM_Challenge#a-list-of-the-test-passed-can-be-found-futher-below
