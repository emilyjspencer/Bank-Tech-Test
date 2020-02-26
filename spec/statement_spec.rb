require 'statement'

describe 'Statement' do
  let(:time) {Time.now.strftime("%d/%m/%Y")}
  let(:transactions_history) { "time || 20.00 || 0 || 2020.00" }
  let(:statement) { Statement.new(transactions_history) }

  describe '#initialize' do
    it 'prints transactions' do
      expect(statement.transactions_history).to eq transactions_history
    end
  end

 
end 
