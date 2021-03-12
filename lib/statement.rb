# frozen_string_literal: true

require_relative 'bank_account'
require_relative 'transaction_history'

# This code is a bank statement
class Statement
  attr_accessor :statement

  def initialize
    @statement = []
  end

  def add_to_statement(date, amount, current_balance)
    @statement << (amount.positive? ? "#{date} || #{format_currency(amount)} || || #{format_currency(current_balance)}" : "#{date} || || #{format_currency(-amount)} || #{format_currency(current_balance)}")
  end

  def format_currency(amount)
    format('%.2f', amount)
  end

  def print_statement
    puts @statement.reverse.unshift('date || credit || debit || balance')
    @statement.reverse.unshift('date || credit || debit || balance')
  end

end
