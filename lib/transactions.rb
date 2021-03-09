# This code runs the transactions for a bank account
class Transactions 

  def deposit(date, deposit_amount)
    @current_balance += deposit_amount
    @acc_statement << "#{date} || #{format('%.2f', deposit_amount)} || || #{format('%.2f', @current_balance)}"
  end

  def withdrawal(date, withdrawal_amount)
    @current_balance -= withdrawal_amount
    @acc_statement << "#{date} || || #{format('%.2f', withdrawal_amount)} || #{format('%.2f', @current_balance)}"
  end
  
end