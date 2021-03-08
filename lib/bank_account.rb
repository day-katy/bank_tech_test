# frozen_string_literal: true

# This code runs a bank statement in IRB
class BankAccount
  attr_accessor :current_balance, :acc_statement

  def initialize(current_balance = 0)
    @current_balance = current_balance
    @acc_statement = ['date || credit || debit || balance']
  end

  def print_statement
     @acc_statement
  end

  def deposit (date, deposit_amount)
    @current_balance += deposit_amount 
    @acc_statement << "#{date} || #{sprintf("%.2f", deposit_amount)} || || #{sprintf("%.2f", @current_balance)}"
  end

  def withdrawal (date, withdrawal_amount)
    @current_balance -= withdrawal_amount
    @acc_statement << "#{date} || || #{sprintf("%.2f", withdrawal_amount)} || #{sprintf("%.2f", @current_balance)}"
  end

end
