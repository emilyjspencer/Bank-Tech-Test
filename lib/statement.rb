class Statement
  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
  end 

  def print_statement
    @transactions.each do | transaction |
      puts transaction
    end
  end 



end 