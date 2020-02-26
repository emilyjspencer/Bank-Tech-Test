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
    @withdrawal = "#{format_time(time)} ||  || #{format_amount(amount)} || #{"%.2f" %check_balance}"
    make_transaction(@withdrawal)
  end 

  def deposit(amount)
    fail "Error: Unable to deposit a negative amount" if negative_deposit(amount)
    @balance += amount
    @deposit = "#{format_time(time)} || #{format_amount(amount)} ||  || #{"%.2f" %check_balance}"
    make_transaction(@deposit)
  end

  def check_balance
    return @balance
  end

  def print_statement # delegates responsibility to Statement class 
    Statement.new(@transactions_history).print_statement
  end 


  private

  def make_transaction(transaction_type)
    if transaction_type == @deposit
      @transactions_history.push(@deposit)
    elsif transaction_type == @withdrawal
      @transactions_history.push(@withdrawal)
    end
  end

  def format_amount(amount)
    return "#{"%.2f" %amount}" 
  end 

  def format_time(time)
    time = Time.now.strftime("%d/%m/%Y")
    return time
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