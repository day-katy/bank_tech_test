# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  before(:each) do
    @account = BankAccount.new
  end

  describe '#initialize' do
    let(:statement) { double }
    subject { BankAccount.new(statement) }

    it 'starts with an initial current balance of 0' do
      expect(@account.current_balance).to eq 0
    end

    it 'starts with an empty array for the accumulated statement' do
      expect(subject.statement).to eq statement
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

  describe '#statement' do
    it 'has the date, credit/debit, and balance of a bank statement' do
      @account.deposit('10/01/2012', 1000)
      @account.deposit('13/01/2012', 2000)
      @account.withdrawal('14/01/2012', 500)
      expect(@account.statement.print_statement).to eq ['date || credit || debit || balance',
                                                        '14/01/2012 || || 500.00 || 2500.00',
                                                        '13/01/2012 || 2000.00 || || 3000.00',
                                                        '10/01/2012 || 1000.00 || || 1000.00']
    end

    it 'gets the bank statement information from an array of a pushed deposit to bank statement' do
      @account.deposit('08/03/2021', 1000.00)
      expect(@account.statement.print_statement).to eq ['date || credit || debit || balance',
                                                        '08/03/2021 || 1000.00 || || 1000.00']
    end

    it 'gets the bank statement information from an array of a pushed withdrawal from bank statement' do
      @account.deposit('08/03/2021', 1000.00)
      @account.withdrawal('10/03/2021', 500.00)
      expect(@account.statement.print_statement).to eq ['date || credit || debit || balance',
                                                        '10/03/2021 || || 500.00 || 500.00',
                                                        '08/03/2021 || 1000.00 || || 1000.00']
    end
  end

  describe "#format_currency" do 
    it "formats the currency correctly" do 
      expect(subject.format_currency(100)).to eq "100.00"
    end
  end

end
