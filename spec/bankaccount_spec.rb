require 'bankaccount'

describe 'BankAccount' do
  let(:bankaccount) { BankAccount.new }
  
  describe '#initialize' do
    it 'initializes with a balance of 2000' do
      expect(bankaccount.balance).to eq 2000
    end
  end

  describe '#withdraw_cash' do
    it 'allows the account holder to withdraw cash from their account' do
      bankaccount = BankAccount.new
      bankaccount.withdraw_cash(200)
      expect(bankaccount.balance).to eq 1800
    end
  end
end 

