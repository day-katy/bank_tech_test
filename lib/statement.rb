require_relative 'bank_account'

class Statement
  attr_reader :acc_statement

  def print_statement
    @acc_statement.reverse.unshift('date || credit || debit || balance')
  end

end