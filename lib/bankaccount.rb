class BankAccount

  attr_reader :balance, :transactions, :debit, :credit 

  def initialize
    @balance = 2000
    @debit = 0
    @credit = 0
    @transactions = []
  end 

  def withdraw_cash(amount)
    fail "Insufficient funds - unable to withdraw" if insufficient_funds(amount)
    @balance -= amount
    @debit += 1
    debit = amount
    transaction = "#{Time.now.strftime("%d/%m/%Y")} ||  || #{"%.2f" %debit} || #{"%.2f" %check_balance}"
    @transactions.push(transaction)
  end 

  def deposit(amount)
    fail "Unable to deposit a negative amount" if amount < 0
    @balance += amount
    @credit += 1
    credit = amount
    transaction = "#{Time.now.strftime("%d/%m/%Y")} || #{"%.2f" %credit} ||  || #{"%.2f" %check_balance}"
    @transactions.push(transaction)
  end

  def check_balance
    return @balance
  end

  def view_transactions
    @transactions.each { |transaction| 
      puts transaction  }
  end 


  def print_statement
    Statement.new(@transactions).print_statement
  end 

  private

  def insufficient_funds(amount)
    @balance < amount
  end 
      
  

end 