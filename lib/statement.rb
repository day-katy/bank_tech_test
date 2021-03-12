# frozen_string_literal: true

require_relative 'bank_account'
require_relative 'transaction_history'

# This code is a bank statement
class Statement
  attr_accessor :acc_statement

  def initialize(acc_statement = TransactionHistory.new)
    @acc_statement = acc_statement
  end

  def print_statement
    puts @acc_statement.reverse.unshift('date || credit || debit || balance')
    @acc_statement.reverse.unshift('date || credit || debit || balance')
  end

end
