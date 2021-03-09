# frozen_string_literal: true
require_relative 'transactions'
# This code runs a bank statement in IRB
class BankAccount
  attr_accessor :current_balance, :acc_statement

  def initialize(current_balance = 0)
    @current_balance = current_balance
    @acc_statement = []
  end

  def print_statement
    @acc_statement.reverse.unshift('date || credit || debit || balance')
  end

end
