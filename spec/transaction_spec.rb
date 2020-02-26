require 'transaction'

describe Transaction do

  let(:transaction) { Transaction.new }
  let(:time) {Time.now.strftime("%d/%m/%Y")}


  describe '#initialization' do
    it 'is initialized with a transactions array' do
      expect(transaction.transactions_history).to be_a Array
    end 

   
  end
end 