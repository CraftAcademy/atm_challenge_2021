
<h1>READ ME</h1>
<h2>for ATM-challenge 2019, created by Pia and Becca</h2>
GitHub-repositories:
Pia's: https://github.com/piavW/atm_challenge_2019
Becca's: https://github.com/beccaburns/atm_challenge_2019

<h2>What the code does</h2>
This code creates an ATM, a person with an account. It allows a person to access their ATM-account, making deposits and withdrawals. The ATM is enabled to state whether the account is active or disabled. The account is enabled to state whether it has the available funds requested to be withdrawn by the person. The ATM can also differentiate between if there is enought money in the ATM to accomodate the requested withdrawal. 

<h2>Dependencies</h2>
This code is written in Ruby and is unit tested with RSpec. It is manually tested through the irb in Terminal. We've used Visual Studio Code to access and write the code. It is saved on GitHub. 

<h2>Setup</h2>
After you fork the repository, run bundle install in your Terminal and make sure you are in the project folder. That should install RSpec on your computer.

Then, from your Terminal go to the project folder and run RSpec.

To manually use it through irb in Terminal, open Terminal, "cd " your way to the repository's root-folder (atm_challenge_2019), and type the word "irb" into Terminal.

<h2>Instructions</h2>
To run the program inside irb in Terminal.

```rb 
load './lib/person.rb'
load './lib/atm.rb'
load './lib/account.rb'
require 'date'
```
You have now loaded the program properly. 

Next steps:
- create a new ATM 
- create a new person of Person class
- create an account
- deposit money into the account
- withdraw money from the persons account using the instantiated atm 

```rb
atm = ATM.new 
person1 = Person.new(name: 'chosenName')
person1.create_account()
person1.deposit(150) #or an amount of your choice
person1.withdraw(amount: 100, pin: givenPinCode atm: atm) #-Use the pin given when you create the account
```

<h2>Acknowledgements</h2>
Thank you google, pairprogrammer, CraftAcademy coaches and amazing cohort teammates.

<h2>Updates/improvements plans</h2>
We plan to refactor the code. 

<h3>License</h3>
MIT-license

<h1> User Stories </h1>
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
In order for the right person to make a withdrawal I want each person to have a separate account
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
As a Bank Customer
In order to withdraw funds in even amounts
I want to receive funds in 5, 10 & 20$ bills
```

```
As an ATM operator             
In order to allow access to active customers             
I want to allow withdrawals from only active accounts
```

```
As a Customer
In order to manage my funds
I need to have a personal account
```

```
As an ATM operator
In order to keep track of our customers
We want to assign each account to a separate person
```