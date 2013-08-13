class Accounts
  @@last_account_number = 0;
  def initialize(name)
    @name = name
    @@last_account_number += 1
    @account_number = @@last_account_number
    @balance = 1000.00
  end
  public
    def deposit(amount)
      @balance += amount
      print amount, " deposited into account no. ", @account_number, "\n"
    end
    def withdraw(amount)
      if amount <= @balance
        @balance -= amount
        print amount, " withdrawn from account no. ", @account_number, "\n"
      else
        print "Sorry you cannot withdraw ", amount, ". Your account balance is insufficient.\n"
      end
    end
end