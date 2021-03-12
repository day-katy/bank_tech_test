class TransactionHistory 
attr_accessor :transaction_history, :statement

def initialize
  @transaction_history = []
end

def add_transaction(date, amount, current_balance)
  @transaction_history << [date, amount, current_balance]
end

end