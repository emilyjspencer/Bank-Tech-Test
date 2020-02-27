require 'time'

class Statement

  attr_reader :transactions_history
  
  #def initialize(transactions_history)
    #@transactions_history = transactions_history
  #end 

  def initialize
    @transactions_history = []
  end 

  def print_statement
    bank_statement = "date || credit || debit || balance\n"
    @transactions_history.reverse_each do | transaction |
      print bank_statement += transaction + "\n"
    end
     bank_statement.chomp("\n")
  end 

  def format_amount(amount)
    return "#{"%.2f" %amount}" 
  end 

  def format_time(time)
    time = Time.now.strftime("%d/%m/%Y")
    return time
  end 

  def format_balance(check_balance)
    return "#{"%.2f" %check_balance}"
  end 
end 