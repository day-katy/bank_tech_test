# frozen_string_literal: true
require_relative 'statement'

# This code runs a bank statement in IRB
class BankAccount
  attr_accessor :current_balance, :statement

  def initialize(current_balance = 0, statement = Statement.new)
    @current_balance = current_balance
    @statement = statement
  end

  def deposit(date, amount)
    @current_balance += amount
    @statement.acc_statement << "#{date} || #{format('%.2f', amount)} || || #{format('%.2f', @current_balance)}"
  end

  def withdrawal(date, amount)
    @current_balance -= amount
    @statement.acc_statement << "#{date} || || #{format('%.2f', amount)} || #{format('%.2f', @current_balance)}"
  end

end

