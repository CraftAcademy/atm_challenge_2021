## atm_challenge_2021
First week ATM challenge project, by August and Max.

### The code
Our code simulates the use of an ATM using Ruby classes. As per the spec, we specify three different classes: `Atm`, `Account`, and `Person`. 

### Dependencies
In the [Gemfile](https://github.com/maxarvid/atm_challenge_2021/blob/master/Gemfile) you will only find two dependencies: `rspec` for testing and `pry` for debugging.

### Setup
You can run `git clone https://github.com/maxarvid/atm_challenge_2021.git` in your terminal to download a copy of this repo (provided you have git installed).

Then `cd` into your new `atm_challenge_2021` directory.

If you don't have `pry` or `rspec` installed you may need to run `bundle install` (or equivalent if you are using something other than Bundler).

Feel free to run `rspec` to see the output of our tests in your terminal.

### Instructions
This programme is a prototype, as such it lacks a visual layer. The way to run it is through `irb` in your terminal. Make sure you are still in the `atm_challenge_2021` directory and run `irb`. Now we can load in our classes:
```ruby
> load('./lib/person.rb')
 => true 
```
The class `Person` requires `Account` and `Atm`, so no need to load their respective files in separately.

Let's instantiate a person and assign them to a variable, `bob`.
```ruby
> bob = Person.new(name: 'Bob')
 => #<Person:0x00007f94a62ccad0 @account=nil, @cash=0, @name="Bob"> 
```
Now when you instantiate `bob` you need to provide the Person class with a name. Forgetting to pass in a name should provide you with the following error message:
```ruby
> no_name = Person.new
/Users/usr/atm_challenge_2021/lib/person.rb:33:in `missing_name': A name is required (RuntimeError)
```
Let's have a closer look at `bob`:
```ruby
> bob
 => #<Person:0x00007fb608a6d608 @account=nil, @cash=0, @name="Bob">
```
Looks like Bob doesn't have any cash. Nor does he have an account. Luckily for Bob, out program allow him to create an account using a `.create_account` method:
```ruby
> bob.create_account
 => 
#<Account:0x00007fb609029b50
 @account_status=:active,
 @balance=1000,
 @exp_date="09/26",
 @owner=
  #<Person:0x00007fb608a6d608
   @account=#<Account:0x00007fb609029b50 ...>,
   @cash=0,
   @name="Bob">,
 @pin_code=9093> 
```
Luckily for Bob, the Craft Academy Bank gives all new customers $1000 when they open an account. But Bob is not satisfied yet. Bob needs to carry some cash. What's a Bob to do? He needs an ATM to withdraw it. To withdraw money from his account, he needs an ATM. The `.withdraw` method in the `Account` class requires an ATM to be specified as part of the arguments as follows:
```ruby
> bob.withdraw(amount: 75, pin_code: 9093, account: bob.account)
/Users/max/craftAcademy/atm_challenge_2021/lib/person.rb:55:in `missing_atm': An ATM is required (ArgumentError)
```
What did we just say about an ATM being required?!? Bob finds an ATM by instantiating it, and then passing it along the `.withdraw` method. Let's try again:
```ruby
> atm = Atm.new
 => #<Atm:0x00007fb608834a58 @funds=1000> 
> bob.withdraw(amount: 75, pin_code: 9093, account: bob.account, atm:
 atm)
 => 75 
```
Well that seems nice, let's have a look at Bob now:
```ruby
> bob
 => 
#<Person:0x00007fb608a6d608
 @account=
  #<Account:0x00007fb609029b50
   @account_status=:active,
   @balance=925,
   @exp_date="09/26",
   @owner=#<Person:0x00007fb608a6d608 ...>,
   @pin_code=9093>,
 @cash=75,
 @name="Bob"> 
```
Bob's account balance is now $925 and he has $75 in cash. But Bob just realized he took out too much cash. He wants to deposit $50 back into his account. He can do that with the `.deposit` method:
```ruby
> bob.deposit(50)
 => 975 
> bob
 => 
#<Person:0x00007fb608a6d608
 @account=
  #<Account:0x00007fb609029b50
   @account_status=:active,
   @balance=975,
   @exp_date="09/26",
   @owner=#<Person:0x00007fb608a6d608 ...>,
   @pin_code=9093>,
 @cash=25,
 @name="Bob">
```
Note that we only need to pass in the amount Bob wants to deposit into his account. Please also note that above we've used a `pin_code` of 9093. This will differ on your machine as the `pin_code` is randomly generated when an account is created.

### Acknowledgements
The majority of the specs for this code came from Craft Academy's course documentation.

### Updates/Improvements plans 
Fix the `.deposit` method to specify which account you want it to be deposited to. It should also require an ATM, just like the `.withdraw` method.

Currently the ATM keeps track of how much money is in the machine, and can specify the bill denomination distributed to people making valid withdrawals. It does not specify how many of what bills are available on instantiation. This should be added and tracked.

### License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.