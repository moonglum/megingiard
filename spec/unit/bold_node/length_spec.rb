require 'megingiard/bold_node'

describe Megingiard::BoldNode do
  describe 'length' do
    let(:child) { double('Node', length: 12) }
    subject { Megingiard::BoldNode.new(child) }

    it 'should return the length of the child' do
      expect(subject.length).to eq child.length
    end
  end
end
