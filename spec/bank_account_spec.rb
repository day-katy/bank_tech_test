# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  before(:each) do
    @account = BankAccount.new
  end

  describe '#initialize' do
  let(:statement) {double}
  subject { BankAccount.new(statement)}

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
end
