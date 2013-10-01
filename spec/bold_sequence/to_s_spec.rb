require 'megingiard/bold_node'

describe Megingiard::BoldNode do
  subject { Megingiard::BoldNode.new(child) }
  let(:child) { double(String, { to_s: child_string }) }
  let(:child_string) { double }
  let(:reset_sequence_string) { double }
  let(:bold_sequence_string) { double }
  let(:expected_sequence) { "#{Megingiard::BOLD_SEQUENCE}#{child}#{Megingiard::RESET_SEQUENCE}" }

  before do
    allow(Megingiard::RESET_SEQUENCE).to receive(:to_s)
      .and_return(reset_sequence_string)
    allow(Megingiard::BOLD_SEQUENCE).to receive(:to_s)
      .and_return(bold_sequence_string)
  end

  describe 'to_s' do
    it 'should wrap the child in a bold and a reset sequence' do
      expect(subject.to_s).to eq expected_sequence
    end
  end
end
