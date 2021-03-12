require 'transaction_history'

describe TransactionHistory do
  describe '#inititialize' do
      it 'begins with an empty array' do
        expect(subject.transaction_history).to eq []
      end
    end
end