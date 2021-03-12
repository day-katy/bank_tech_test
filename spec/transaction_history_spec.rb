require 'transaction_history'

describe TransactionHistory do
  describe '#inititialize' do
      it 'begins with an empty array' do
        expect(subject.transaction_history).to eq []
      end
    end

  describe "#read_transaction" do 
    it "returns the transaction history " do
      expect(subject.read_transaction).to eq transaction_history
    end
  end

end