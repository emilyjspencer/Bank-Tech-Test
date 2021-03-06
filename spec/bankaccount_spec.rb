require 'bankaccount'

describe 'BankAccount' do
  let(:bankaccount) { BankAccount.new }
  let(:time) {Time.now.strftime("%d/%m/%Y")}
  
  describe '#initialize' do
    it 'initializes with a balance of 2000' do
      expect(bankaccount.balance).to eq 2000.00
    end
  end

  describe '#withdraw_cash' do
    it 'allows the account holder to withdraw cash from their account' do
      bankaccount.withdraw_cash(200)
      expect(bankaccount.balance).to eq 1800.00
    end

    it 'prevents account holder from withdrawing money when they dont have sufficient funds' do
      bankaccount.deposit(10)
      expect { bankaccount.withdraw_cash(3000) }.to raise_error "Error: Insufficient funds - unable to withdraw"
    end

    it 'prevents account holder from withdrawing a negative amount' do
      expect { bankaccount.withdraw_cash(-2) }.to raise_error "Error: Unable to withdraw a negative amount"
    end 
  end

  describe '#deposit' do
    it 'allows the account holder to deposit money to their account' do
      bankaccount.deposit(250)
      expect(bankaccount.balance).to eq 2250.00
    end

    it 'prevents the account holder from trying to deposit a negative amount' do
      expect { bankaccount.deposit(-2) }.to raise_error "Error: Unable to deposit a negative amount"
    end 
  end 

  describe '#check_balance' do
    it 'checks the account holders current balance' do
      bankaccount.deposit(100)
      expect(bankaccount.check_balance).to eq 2100.00
    end
  end 

    describe '#print_statement' do
      it 'prints the date, type of transaction, amount and balance after transaction when withdrawing' do
        bankaccount.withdraw_cash(20)
        withdrawal = "#{Time.now.strftime("%d/%m/%Y")} ||  || 20.00 || 1980.00" 
        expect(bankaccount.print_statement).to eq "date || credit || debit || balance\n#{time} ||  || 20.00 || 1980.00"
      end 

      it 'prints the date, type of transaction, amount and balance after transaction when depositing' do
        bankaccount.deposit(20)
        deposit = "#{Time.now.strftime("%d/%m/%Y")} || 20.00 ||  || 2020.00" 
        expect(bankaccount.print_statement).to eq "date || credit || debit || balance\n#{time} || 20.00 ||  || 2020.00"
      end 
    end

end 

