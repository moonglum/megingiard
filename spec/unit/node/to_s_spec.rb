require 'megingiard/node'

describe Megingiard::Node do
  subject { Megingiard::Node.new(first_child, second_child) }

  let(:first_child) { double(String, { to_s: first_child_string }) }
  let(:second_child) { double(String, { to_s: second_child_string }) }
  let(:first_child_string) { double }
  let(:second_child_string) { double }
  let(:concatenation) { double }

  describe 'to_s' do

    it 'should concatenate the children as strings' do
      expect(first_child_string).to receive(:+)
        .with(second_child_string)

      subject.to_s
    end

    it 'should return the result' do
      allow(first_child_string).to receive(:+)
        .and_return(concatenation)

      expect(subject.to_s).to eq concatenation
    end
  end
end
