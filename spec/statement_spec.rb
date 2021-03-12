# frozen_string_literal: true

require 'statement'

describe Statement do

  describe '#inititialize' do
    it 'begins with an empty array' do
      expect(subject.statement).to eq []
    end
  end

  describe "add_to_statement" do
    it "adds formatted transaction history to statement" do 
      expect(subject.add_to_statement("10/03/2021", 100, 100)).to eq [ '10/03/2021 || || 500.00 || 500.00']
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


  # describe '#statement' do
  #   it 'has the date, credit/debit, and balance of a bank statement' do
  #     @account.deposit('10/01/2012', 1000)
  #     @account.deposit('13/01/2012', 2000)
  #     @account.withdrawal('14/01/2012', 500)
  #     expect(@account.statement.print_statement).to eq ['date || credit || debit || balance',
  #                                                       '14/01/2012 || || 500.00 || 2500.00',
  #                                                       '13/01/2012 || 2000.00 || || 3000.00',
  #                                                       '10/01/2012 || 1000.00 || || 1000.00']
  #   end

  #   it 'gets the bank statement information from an array of a pushed deposit to bank statement' do
  #     @account.deposit('08/03/2021', 1000.00)
  #     expect(@account.statement.print_statement).to eq ['date || credit || debit || balance',
  #                                                       '08/03/2021 || 1000.00 || || 1000.00']
  #   end

  #   it 'gets the bank statement information from an array of a pushed withdrawal from bank statement' do
  #     @account.deposit('08/03/2021', 1000.00)
  #     @account.withdrawal('10/03/2021', 500.00)
  #     expect(@account.statement.print_statement).to eq ['date || credit || debit || balance',
  #                                                       '10/03/2021 || || 500.00 || 500.00',
  #                                                       '08/03/2021 || 1000.00 || || 1000.00']
  #   end
  # end


end
