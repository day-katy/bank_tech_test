# frozen_string_literal: true

require 'statement'

describe Statement do
let(:transaction_history) {double}

  describe '#inititialize' do
    it 'begins with an empty array' do
      expect(subject.acc_statement).to eq transaction_history
    end
  end

  describe '#print_statement' do
    it 'titles the banke statement correctly' do
      expect(subject.print_statement).to eq ['date || credit || debit || balance']
    end
  end
end
