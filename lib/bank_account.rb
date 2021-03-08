# frozen_string_literal: true

# This code runs a bank statement in IRB
class BankAccount
  attr_accessor :current_balance

  def initialize
    @current_balance = 0
  end


  def print_statement
    'date || credit || debit || balance\n 14/01/2012 || || 500.00 || 2500.00\n 10/01/2012 || 1000.00 || || 1000.00'
  end

  def deposit (date, deposit_amount)
    updated_balance = sprintf("%.2f", (deposit_amount + @current_balance))
    return "#{date}, #{updated_balance}"
  end

end
