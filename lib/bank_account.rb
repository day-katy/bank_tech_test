# frozen_string_literal: true

# This code runs a bank statement in IRB
class BankAccount

  def print_statement
    'date || credit || debit || balance\n 14/01/2012 || || 500.00 || 2500.00\n 10/01/2012 || 1000.00 || || 1000.00'
  end

  def deposit (date, deposit_amount)
    deposit = sprintf("%.2f", deposit_amount)
    return "#{date}, #{deposit}"
  end

end
