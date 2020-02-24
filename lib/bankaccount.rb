class BankAccount

  attr_reader :balance, :transactions, :debit, :credit 

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
    transaction = "#{Time.now.strftime("%d/%m/%Y")} || 0 || #{debit} || #{check_balance}"
    @transactions.push(transaction)
    return @transaction = "#{Time.now.strftime("%d/%m/%Y")} || 0 || #{debit} || #{check_balance}"
  end 

  def deposit(amount)
    @balance += amount
    @credit += 1
    credit = amount
    transaction = "#{Time.now.strftime("%d/%m/%Y")} || #{credit} || 0 || #{check_balance}"
    @transactions.push(transaction)
    return @transaction = "#{Time.now.strftime("%d/%m/%Y")} || #{credit} || 0 || #{check_balance}"
  end

  def check_balance
    return @balance
  end

  def view_transactions
    @transactions.each { |transaction| 
      print transaction  }
  end 

  def print_statement
    @transactions.each do | transaction |
      p transaction
    end
  end 
      
  

end 