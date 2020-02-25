class Statement
  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
  end 

  def print_statement
    bank_statement = "date || credit || debit || balance\n"
    @transactions.each do | transaction |
      bank_statement += transaction + "\n"
    end
    puts bank_statement.chomp("\n")
  end 



end 