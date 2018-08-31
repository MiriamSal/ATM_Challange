# atm_challenge

## Project Details
This is an ATM simulation application written in Ruby.

- ### Tests
We used rspec to test our implementation one test at the time making sure that the code ran error free. 
Initiated rspec by typing: `rspec --init` and `bundle install`
  
- ### Implementation
Contains 3 classes (Atm, Account and Person) which can create an account owner, initiate an account, initiate an ATM, and call on a variety of methods, a.o., to deposit and withdraw funds.

- ### How to use in IRB
To run this application initialize IRB on your terminal and type `load "<yourfilename.extension here>"` for the person and atm files. You can then go on to create new instances, e.g. `person = Person.new({name: "Name"})` for person, account and atm. You can then call the deposit, withdraw and balance methods (a.o.) to execute those on the classes. 
