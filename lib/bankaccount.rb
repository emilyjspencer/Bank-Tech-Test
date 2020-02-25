require_relative 'transaction'
require_relative 'statement'

class BankAccount

  attr_reader :balance, :transactions_history

  def initialize
    @balance = 2000
    @transactions_history = []
  end 

  def withdraw_cash(amount)
    fail "Error: Insufficient funds - unable to withdraw" if insufficient_funds(amount)
    fail "Error: Unable to withdraw a negative amount" if negative_withdrawal(amount)
    @balance -= amount
    @withdrawal = "#{Time.now.strftime("%d/%m/%Y")} ||  || #{"%.2f" %amount} || #{"%.2f" %check_balance}"
    make_transaction(transaction_type: @withdrawal) 
  end 

  def deposit(amount)
    fail "Error: Unable to deposit a negative amount" if negative_deposit(amount)
    @balance += amount
    @deposit = "#{Time.now.strftime("%d/%m/%Y")} || #{"%.2f" %amount} ||  || #{"%.2f" %check_balance}"
    make_transaction(transaction_type: @deposit)
  end

  def check_balance
    return @balance
  end

  def view_transactions
    Statement.new(@transactions_history).view_transactions
  end 

  def make_transaction(transaction_type)
    if transaction_type == @withdrawal
      @transactions_history.push(@withdrawal)
    else 
      @transactions_history.push(@deposit) 
    end
  end 

  def print_statement
    Statement.new(@transactions_history).print_statement
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