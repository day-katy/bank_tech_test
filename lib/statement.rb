require_relative 'bank_account'

class Statement
  attr_accessor :acc_statement

  def initialize
    @acc_statement = []
  end

  def print_statement
    puts @acc_statement.reverse.unshift('date || credit || debit || balance')
    @acc_statement.reverse.unshift('date || credit || debit || balance')
  end

end