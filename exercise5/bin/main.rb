#!/usr/bin/env ruby
require_relative "../lib/account"
#Add two accounts and deposit and withdraw money
acc1 = Account.new("Jatin");
acc1.deposit(1500.50);
acc2 = Account.new("ABCD");
acc2.deposit(152.0);
acc1.withdraw(130.00);
#Show Account Info for each account
puts acc1
puts acc2