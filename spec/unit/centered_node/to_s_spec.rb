require 'megingiard/centered_node'

describe Megingiard::CenteredNode do
  let(:width) { 8 }

  context 'with a string of even length' do
    let(:inner_string) { 'test' }
    subject { Megingiard::CenteredNode.new(width, inner_string) }

    it "should center in the same way Ruby's center works" do
      expect(subject.to_s).to eq inner_string.center(width)
    end
  end

  context 'with a string of odd length' do
    let(:inner_string) { 'testy' }
    subject { Megingiard::CenteredNode.new(width, inner_string) }

    it "should center in the same way Ruby's center works" do
      expect(subject.to_s).to eq inner_string.center(width)
    end
  end

  context 'with an object with a length' do
    let(:inner_string) { double('Node', to_s: '$test$', length: 4) }
    subject { Megingiard::CenteredNode.new(width, inner_string) }

    it 'should center' do
      expect(subject.to_s).to eq('  $test$  ')
    end
  end
end
