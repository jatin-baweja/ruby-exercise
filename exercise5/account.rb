class Accounts
  @@last_account_number = 0;
  def initialize(name)
    @name = name
    @@last_account_number += 1
    @account_number = @@last_account_number
    @balance = 1000.00
  end
    def debit(amount)
    end
  public
    def deposit(amount)
      @balance += amount
    end
    def withdraw(amount)
      @balance -= amount if amount <= @balance
      puts "Sorry you cannot withdraw ", amount, ". Your account balance is insufficient."
    end
end

#Add two accounts and deposit and withdraw money
acc1 = Accounts.new("Jatin");
acc1.deposit(1500.50);
acc2 = Accounts.new("ABCD");
acc2.deposit(152.0);
acc1.withdraw(130.00);
#Show Account Info for each account
puts acc1.inspect
puts acc2.inspect
puts acc3.inspect