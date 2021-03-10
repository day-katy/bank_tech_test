# require 'statement'

# describe Statement do
# let(:account) {double}

# describe '#print_statement' do
#     it 'prints the date, credit, debit, and balance of a bank statement' do
#       allow(account).to receive(deposit).and_return()
      
#       account.deposit('10/01/2012', 1000)
#       @account.deposit('13/01/2012', 2000)
#       @account.withdrawal('14/01/2012', 500)
#       expect(@account.print_statement).to eq ['date || credit || debit || balance',
#                                               '14/01/2012 || || 500.00 || 2500.00',
#                                               '13/01/2012 || 2000.00 || || 3000.00',
#                                               '10/01/2012 || 1000.00 || || 1000.00']
#     end

#     it 'gets the bank statement information from an array of a pushed deposit to bank statement' do
#       @account.deposit('08/03/2021', 1000.00)
#       expect(@account.acc_statement).to eq ['08/03/2021 || 1000.00 || || 1000.00']
#     end

#     it 'gets the bank statement information from an array of a pushed withdrawal from bank statement' do
#       @account.deposit('08/03/2021', 1000.00)
#       @account.withdrawal('10/03/2021', 500.00)
#       expect(@account.acc_statement).to eq ['08/03/2021 || 1000.00 || || 1000.00', '10/03/2021 || || 500.00 || 500.00']
#     end
#   end

# end