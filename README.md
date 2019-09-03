# atm_challenge_2019

As a programmer
In order to produce good quality code
I want to work in a test driven way and unit test my code
~ Add Rspec

As a User       
In order to make a withdrawal      
The ATM needs to have funds
~ create the specs and ATM

As a User               
In order to know if my withdrawal was successful or unsuccessful               
I want to receive a message with my withdrawal details
~create a message 

As an ATM operator          
In order for the right person to make a withdrawal I want each person to have a separate account
~ create Account class (using instance_double)

As an ATM operator           
In order to ensure that an Account holder can only withdraw funds that he has balance for           
I want to allow a withdrawal only if there are sufficient funds in the account
~add the balance