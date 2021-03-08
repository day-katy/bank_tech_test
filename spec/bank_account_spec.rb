# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  describe '#print_statement' do
    it 'prints the date, credit, debit, and balance of a bank statement' do
      expect(subject.print_statement).to eq 'date || credit || debit || balance\n 14/01/2012 || || 500.00 || 2500.00\n 10/01/2012 || 1000.00 || || 1000.00'
    end
  end

  describe '#deposit' do
    it 'adds the amount of the deposit to the entire amount in the bank account' do
      expect(subject.deposit("08/03/2021", 1000.00)). to eq "08/03/2021, 1000.00"
    end
  end

end
