class BankAccount

  attr_reader :balance, :debit

  def initialize
    @balance = 2000
    @debit = 0
  end 

  def withdraw_cash(amount)
    @balance -= amount
    @debit += 1
  end 

  def deposit(amount)
    @balance += amount
  end 


end 