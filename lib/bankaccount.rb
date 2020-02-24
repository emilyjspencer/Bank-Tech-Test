class BankAccount

  attr_reader :balance, :debit, :credit, :time, :transactions

  def initialize
    @balance = 2000
    @debit = 0
    @credit = 0
    @transactions = []
  end 

  def withdraw_cash(amount)
    fail "Insufficient funds - unable to withdraw" if @balance < amount
    @balance -= amount
    @debit += 1
    debit = amount
    @transactions.push(-amount)
    return @withdrawal = "#{Time.now.strftime("%d/%m/%Y")} || 0 || #{debit} || #{check_balance}"
  end 

  def deposit(amount)
    @balance += amount
    @credit += 1
    credit = amount
    @transactions.push(amount)
  end

  def check_balance
    return @balance
  end

  def view_transactions
    @transactions.each { |transaction| 
      print transaction }
  end 

  def print_statement
    return "date || credit || debit || balance\n#{@withdrawal}"
  end 


end 