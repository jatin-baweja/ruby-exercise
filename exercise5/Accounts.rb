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