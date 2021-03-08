# frozen_string_literal: true

require 'bank_account'

describe BankAccount do

  before (:each) do
    @account = BankAccount.new
  end

  it 'starts with an initial balance of 0' do
    expect(@account.current_balance).to eq 0
  end

  describe '#print_statement' do
    it 'prints the date, credit, debit, and balance of a bank statement' do
      expect(@account.print_statement).to eq 'date || credit || debit || balance\n 14/01/2012 || || 500.00 || 2500.00\n 10/01/2012 || 1000.00 || || 1000.00'
    end
  end

  describe '#deposit' do
    it 'adds the amount of the deposit to an empty bank account' do
      expect(@account.deposit("08/03/2021", 1000.00)). to eq "08/03/2021, 1000.00"
    end

    it 'adds the deposit amount to a positive current balance of a bank account' do
      @account.deposit("08/03/2021", 1000.00)
      @account.deposit("09/03/2021", 500.00)
      expect(@account.current_balance).to eq 1500.0
    end
  end

  describe "#withdrawal" do
    it "subtracts the amount of the deposit from a positive current balance of a bank account" do 
      @account.deposit("08/03/2021", 1000.00)
      @account.withdrawal("10/03/2021", 500.00)
      expect(@account.current_balance).to eq 500.0
    end
  end

end
