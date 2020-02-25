require_relative 'transaction'

class BankAccount

  attr_reader :balance, :transactions

  def initialize
    @balance = 2000
    @transactions = []
  end 

  def withdraw_cash(amount)
    fail "Error: Insufficient funds - unable to withdraw" if insufficient_funds(amount)
    fail "Error: Unable to withdraw a negative amount" if negative_withdrawal(amount)
    @balance -= amount
    debit = amount
    transaction_type_debit = "#{Time.now.strftime("%d/%m/%Y")} ||  || #{"%.2f" %debit} || #{"%.2f" %check_balance}"
    @transactions.push(transaction_type_debit)
    #Transaction.new(@transactions.make_transaction(transaction_type = transaction_type_debit))

  end 

  def deposit(amount)
    fail "Error: Unable to deposit a negative amount" if negative_deposit(amount)
    @balance += amount
    credit = amount
    transaction_type_credit= "#{Time.now.strftime("%d/%m/%Y")} || #{"%.2f" %credit} ||  || #{"%.2f" %check_balance}"
    @transactions.push(transaction_type_credit)
  end

  def check_balance
    return @balance
  end

  def view_transactions
    Statement.new(@transactions).view_transactions
  end 


  def print_statement
    Statement.new(@transactions).print_statement
  end 

  private

  def insufficient_funds(amount)
    @balance < amount
  end 

  def negative_withdrawal(amount)
    amount < 0
  end 

  def negative_deposit(amount)
    amount < 0
  end 
      
  

end 