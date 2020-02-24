class BankAccount

  attr_reader :balance, :debit, :credit, :time

  def initialize
    @balance = 2000
    @debit = 0
    @credit = 0
    @time = Time.now.strftime("%d/%m/%Y")
  end 

  def withdraw_cash(amount)
    fail "Insufficient funds - unable to withdraw" if @balance < amount
    @balance -= amount
    @debit += 1
  end 

  def deposit(amount)
    @balance += amount
    @credit += 1
  end 

  def check_balance
    return @balance
  end


end 