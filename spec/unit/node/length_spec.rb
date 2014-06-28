require 'megingiard/node'

describe Megingiard::Node do
  describe 'length' do
    let(:child_1) { double('Node', length: 12) }
    let(:child_2) { double('Node', length: 13) }

    subject { Megingiard::Node.new(child_1, child_2) }

    it 'should return the sum of the length of all children' do
      expect(subject.length).to eq 25
    end
  end
end
