class TransactionHistory 
attr_accessor :transaction_history, :statement

def initialize(statement = Statement.new)
  @transaction_history = []
  @statement = statement
end

def add_transaction(date, amount, current_balance)
  @transaction_history << [date, amount, current_balance]
end

end