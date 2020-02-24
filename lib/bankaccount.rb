class BankAccount

  attr_reader :balance, :debit, :credit

  def initialize
    @balance = 2000
    @debit = 0
    @credit = 0
  end 

  def withdraw_cash(amount)
    @balance -= amount
    @debit += 1
  end 

  def deposit(amount)
    @balance += amount
    @credit += 1
  end 


end 