# frozen_string_literal: true

require 'bank_statement'

describe BankStatement do
  describe '#print_statement' do
    it 'prints the date, credit, debit, and balance of a bank statement' do
      expect(subject.print_statement).to eq 'date || credit || debit || balance'
    end
  end

  describe '#deposit' do
  end
end
