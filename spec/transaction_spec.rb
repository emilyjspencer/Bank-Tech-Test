require 'transaction'

describe 'Transaction' do

  let(:transaction) { Transaction.new }
  let(:time) {Time.now.strftime("%d/%m/%Y")}
  let(:transactions_history) { "time || 50.00 || || 2050.00" }

  describe '#make_transaction' do
    it 'adds a £50 to the transactions_history array if transaction type is despoit' do
      transaction = Transaction.new (["time || 50.00 || || 2050.00"])
      #expect(transaction.transactions_history).to eq ["time || 50.00 || || 2050.00"]
      expect(transaction.transactions_history).to eq transactions_history
    end

<<<<<<< HEAD
  
=======
  describe '#initialization' do
    it 'is initialized with a transactions array' do
      expect(transaction.transactions_history).to be_a Array
    end 

   
>>>>>>> e5d48b46605891800fcc6bedc71571377822c0e6
  end





 
end 