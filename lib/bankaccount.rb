class BankAccount

  attr_reader :balance

  def initialize
    @balance = 2000
  end 

  def withdraw_cash(amount)
    @balance -= amount
  end 


end 