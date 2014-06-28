require 'megingiard/centered_node'

describe Megingiard::CenteredNode do
  let(:width) { double('Width') }
  let(:text) { double('Text') }
  subject { Megingiard::CenteredNode.new(width, text) }

  describe 'length' do
    it 'should be the width' do
      expect(subject.length).to eq width
    end
  end
end
