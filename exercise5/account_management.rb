require_relative "Accounts"
#Add two accounts and deposit and withdraw money
acc1 = Accounts.new("Jatin");
acc1.deposit(1500.50);
acc2 = Accounts.new("ABCD");
acc2.deposit(152.0);
acc1.withdraw(130.00);
#Show Account Info for each account
puts acc1.inspect
puts acc2.inspect