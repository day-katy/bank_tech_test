# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  before(:each) do
    @account = BankAccount.new
  end

  describe '#initialize' do
    it 'starts with an initial current balance of 0' do
      expect(@account.current_balance).to eq 0
    end

    it 'starts with an empty array for the accumulated statement' do
      expect(@account.acc_statement).to eq []
    end
  end

  describe '#print_statement' do
    it 'prints the date, credit, debit, and balance of a bank statement' do
      @account.deposit('10/01/2012', 1000)
      @account.deposit('13/01/2012', 2000)
      @account.withdrawal('14/01/2012', 500)
      expect(@account.print_statement).to eq ['date || credit || debit || balance',
                                              '14/01/2012 || || 500.00 || 2500.00', '13/01/2012 || 2000.00 || || 3000.00', '10/01/2012 || 1000.00 || || 1000.00']
    end

    it 'gets the bank statement information from an array of a pushed deposit to bank statement' do
      @account.deposit('08/03/2021', 1000.00)
      expect(@account.acc_statement).to eq ['08/03/2021 || 1000.00 || || 1000.00']
    end

    it 'gets the bank statement information from an array of a pushed withdrawal from bank statement' do
      @account.deposit('08/03/2021', 1000.00)
      @account.withdrawal('10/03/2021', 500.00)
      expect(@account.acc_statement).to eq ['08/03/2021 || 1000.00 || || 1000.00', '10/03/2021 || || 500.00 || 500.00']
    end
  end

  describe '#deposit' do
    it 'adds the amount of the deposit to an empty bank account' do
      @account.deposit('08/03/2021', 1000.00)
      expect(@account.current_balance).to eq 1000.0
    end

    it 'adds the deposit amount to a positive current balance of a bank account' do
      @account.deposit('08/03/2021', 1000.00)
      @account.deposit('09/03/2021', 500.00)
      expect(@account.current_balance).to eq 1500.0
    end
  end

  describe '#withdrawal' do
    it 'subtracts the amount of the deposit from a positive current balance of a bank account' do
      @account.deposit('08/03/2021', 1000.00)
      @account.withdrawal('10/03/2021', 500.00)
      expect(@account.current_balance).to eq 500.0
    end
  end
end
