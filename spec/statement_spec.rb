require 'statement'

describe 'Statement' do
  let(:transactions) { "24-02-2020 || 20 || 0 || 2020" }
  let(:statement) { Statement.new(transactions) }

  describe '#initialize' do
    it 'prints transactions (credit)' do
      expect(statement.transactions).to eq transactions
    end
  end

 
end 
