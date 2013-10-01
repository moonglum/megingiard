require 'megingiard/color_node'

describe Megingiard::ColorNode do
  subject { Megingiard::ColorNode.new(color_name, child) }
  let(:color_name) { double }
  let(:child) { double(String, { to_s: child_string }) }
  let(:child_string) { double }
  let(:text_color_sequence) do
    double(Megingiard::TextColorSequence, { to_s: text_color_sequence_string })
  end
  let(:reset_sequence_string) { double }
  let(:text_color_sequence_string) { double }

  before do
    allow(Megingiard::TextColorSequence).to receive(:new)
      .with(color_name)
      .and_return(text_color_sequence)
    allow(Megingiard::RESET_SEQUENCE).to receive(:to_s)
      .and_return(reset_sequence_string)
  end

  describe 'to_s' do
    it 'should be awesome' do
      sequence = "#{text_color_sequence}#{child}#{Megingiard::RESET_SEQUENCE}"
      expect(subject.to_s).to eq sequence
    end
  end
end
