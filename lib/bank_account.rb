# frozen_string_literal: true

# This code runs a bank statement in IRB
class BankAccount
  attr_accessor :current_balance, :acc_statement

  def initialize(current_balance = 0)
    @current_balance = current_balance
    @acc_statement = []
  end


  def print_statement
    'date || credit || debit || balance\n 14/01/2012 || || 500.00 || 2500.00\n 10/01/2012 || 1000.00 || || 1000.00'
  end

  def deposit (date, deposit_amount)
    @current_balance += deposit_amount 
    "#{date}, #{sprintf("%.2f", @current_balance)}"
  end

  def withdrawal (date, withdrawal_amount)
    @current_balance -= withdrawal_amount
  end

end
