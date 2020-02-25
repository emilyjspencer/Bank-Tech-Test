require 'bankaccount'

describe 'BankAccount' do
  let(:bankaccount) { BankAccount.new }
  let(:time) {Time.now.strftime("%d/%m/%Y")}

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

    it 'states that the transaction type is debit when withdrawing cash' do
      bankaccount.withdraw_cash(200)
      expect(bankaccount.debit).to eq 1
    end

    it 'prevents account holder from withdrawing money when they dont have sufficient funds' do
      bankaccount.deposit(10)
      expect { bankaccount.withdraw_cash(3000) }.to raise_error "Insufficient funds - unable to withdraw"
    end
  end

  describe '#deposit' do
    it 'allows the account holder to deposit money to their account' do
      bankaccount.deposit(250)
      expect(bankaccount.balance).to eq 2250
    end

    it 'states that the transaction type is credit when depositing money to account' do
      bankaccount.deposit(1000)
      bankaccount.deposit(20)
      expect(bankaccount.credit).to eq 2
    end 

  end 

  describe '#check_balance' do
    it 'checks the account holders current balance' do
      bankaccount.deposit(100)
      expect(bankaccount.check_balance).to eq 2100
    end
  end 

  describe '#transactions' do
    it 'shows the total number of transactions made' do
      bankaccount.withdraw_cash(20)
      bankaccount.deposit(200)
      bankaccount.deposit(120)
      expect(bankaccount.transactions.length).to eq 3
    end

    it 'shows all of the transactions' do
      bankaccount.withdraw_cash(100)
      bankaccount.deposit(2000)
      bankaccount.deposit(100)
      expect(bankaccount.view_transactions).to eq ["25/02/2020 ||  || 100 || 1900", "25/02/2020 || 2000 ||  || 3900", "25/02/2020 || 100 ||  || 4000"]
    end 
  end 


    describe '#print_statement' do
      it 'prints the date, type of transaction, amount and balance after transaction when withdrawing' do
        bankaccount.withdraw_cash(20)
        withdrawal = "#{Time.now.strftime("%d/%m/%Y")} ||  || 20 || 1980" 
        expect(bankaccount.print_statement).to eq "date || credit || debit || balance\n25/02/2020 ||  || 20 || 1980"
      end 

      it 'prints the date, type of transaction, amount and balance after transaction when depositing' do
        bankaccount.deposit(20)
        deposit = "#{Time.now.strftime("%d/%m/%Y")} || 20 ||  || 2020" 
        expect(bankaccount.print_statement).to eq "date || credit || debit || balance\n25/02/2020 || 20 ||  || 2020"
      end 
    end

end 

