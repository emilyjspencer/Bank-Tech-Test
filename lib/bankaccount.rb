class BankAccount

  attr_reader :balance, :transactions

  def initialize
    @balance = 2000
    @transactions = []
  end 

  def withdraw_cash(amount)
    fail "Insufficient funds - unable to withdraw" if insufficient_funds(amount)
    @balance -= amount
    debit = amount
    transaction_type_debit = "#{Time.now.strftime("%d/%m/%Y")} ||  || #{"%.2f" %debit} || #{"%.2f" %check_balance}"
    @transactions.push(transaction_type_debit)

  end 

  def deposit(amount)
    fail "Unable to deposit a negative amount" if amount < 0
    @balance += amount
    credit = amount
    transaction_type_credit= "#{Time.now.strftime("%d/%m/%Y")} || #{"%.2f" %credit} ||  || #{"%.2f" %check_balance}"
    @transactions.push(transaction_type_credit)
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