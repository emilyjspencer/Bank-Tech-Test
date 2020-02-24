require 'bankaccount'

describe 'BankAccount' do
  let(:bankaccount) { BankAccount.new }

  before(:each) do
    bankaccount = BankAccount.new
  end 
  
  describe '#initialize' do
    it 'initializes with a balance of 2000' do
      expect(bankaccount.balance).to eq 2000
    end
  end

  describe '#withdraw_cash' do
    it 'allows the account holder to withdraw cash from their account' do
      bankaccount.withdraw_cash(200)
      expect(bankaccount.balance).to eq 1800
    end
  end

  describe '#deposit' do
  it 'allows the account holder to deposit money to their account' do
    bankaccount.deposit(250)
    expect(bankaccount.balance).to eq 2250
  end
end 
end 

