require 'transaction_history'

describe TransactionHistory do
  describe '#inititialize' do
      it 'begins with an empty array' do
        expect(subject.transaction_history).to eq []
      end
    end

  describe "#add_transaction" do 
    it "returns the transaction history " do
      expect(subject.add_transaction("10/03/2021", 500, 500)).to eq ["10/03/2021", 500, 500]
    end
  end

end