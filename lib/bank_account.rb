# frozen_string_literal: true

require_relative 'statement'
require_relative 'transaction_history'

# This code runs a bank statement in IRB
class BankAccount
  attr_accessor :current_balance, :statement

  def initialize(current_balance = 0, statement = Statement.new)
    @current_balance = current_balance
    @statement = statement
  end

  def deposit(date, amount)
    @current_balance += amount
    @statement.acc_statement.transaction_history << "#{date} || #{format_currency(amount)} || || #{format_currency(@current_balance)}"
  end

  def withdrawal(date, amount)
    @current_balance -= amount
    @statement.acc_statement.transaction_history << "#{date} || || #{format_currency(amount)} || #{format_currency(@current_balance)}"
  end

  def format_currency(amount)
    format('%.2f', amount)
  end

end
