class Statement
  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
  end 

  def print_statement
    bank_statement = "date || credit || debit || balance\n"
    @transactions.reverse_each do | transaction |
      bank_statement += transaction + "\n"
    end
     bank_statement.chomp("\n")
  end 

  def view_transactions
    @transactions.reverse_each { |transaction| 
      puts transaction  }
  end



end 