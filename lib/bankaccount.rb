require_relative 'transaction'
require_relative 'statement'
require 'time'

class BankAccount

  attr_reader :balance, :transactions_history, :time

  def initialize
    @balance = 2000
    time = Time.now.strftime("%d/%m/%Y")
    @transactions_history = []
  end 

  def withdraw_cash(amount)
    fail "Error: Insufficient funds - unable to withdraw" if insufficient_funds(amount)
    fail "Error: Unable to withdraw a negative amount" if negative_withdrawal(amount)
    @balance -= amount
    @withdrawal = "#{format_time(time)} ||  || #{format_amount(amount)} || #{format_balance(check_balance)}"
    make_transaction(@withdrawal)
  end 

  def deposit(amount)
    fail "Error: Unable to deposit a negative amount" if negative_deposit(amount)
    @balance += amount
    @deposit = "#{format_time(time)} || #{format_amount(amount)} ||  || #{format_balance(check_balance)}"
    make_transaction(@deposit)
  end

  def check_balance
    return @balance
  end

  def print_statement 
    Statement.new(@transactions_history).print_statement
  end 

  def format_amount(amount) 
    Statement.new(@transactions_history).format_amount(amount)
  end 

  def format_time(time) 
    Statement.new(@transactions_history).format_time(time)
  end 

  def format_balance(check_balance) 
    Statement.new(@transactions_history).format_balance(check_balance)
  end 


  private

  def make_transaction(transaction_type)
    if transaction_type == @deposit
      @transactions_history.push(@deposit)
    elsif transaction_type == @withdrawal
      @transactions_history.push(@withdrawal)
    end
  end

  
  
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