# frozen_string_literal: true

# This code runs a bank statement in IRB
class BankAccount

  def print_statement
    'date || credit || debit || balance'
  end

  def deposit (date, deposit_amount)
    deposit = sprintf("%.2f", deposit_amount)
    return "#{date}, #{deposit}"
  end

end
