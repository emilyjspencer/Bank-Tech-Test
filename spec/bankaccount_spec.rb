require 'bankaccount'

describe 'BankAccount' do
  let(:bankaccount) { BankAccount.new }
    
  it 'initializes with a balance of 2000' do
    expect(bankaccount.balance).to eq 2000
  end
end

