# frozen_string_literal: true

require 'statement'

describe Statement do

  describe '#inititialize' do
    it 'begins with an empty array' do
      expect(subject.acc_statement).to eq []
    end
  end

  describe "#format_currency" do 
    it "formats the currency correctly" do 
      expect(subject.format_currency(100)).to eq "100.00"
    end
  end

  describe '#print_statement' do
    it 'titles the bank statement correctly' do
      expect(subject.print_statement).to eq ['date || credit || debit || balance']
    end
  end
end
