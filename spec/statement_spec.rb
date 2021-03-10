require 'statement'

describe Statement do

  describe "#inititialize" do 
    it "begins with an empty array" do
      expect(subject.acc_statement).to eq []
    end
  end

describe '#print_statement' do
  it "titles the banke statement correctly" do
    expect(subject.print_statement).to eq ['date || credit || debit || balance']
  end
end
 

end