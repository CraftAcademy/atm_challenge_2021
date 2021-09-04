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


### Acknowledgements - If you have used other peoples code you should link it here

### Updates/Improvements plans - What updates or improvements you plan to do

### License - What license you use and what the terms are for others to use your code.