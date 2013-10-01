require 'megingiard/text_color_sequence'

describe Megingiard::TextColorSequence do
  subject { Megingiard::TextColorSequence }
  let(:color_code) { double }
  let(:ansi_colors) { double }
  let(:name) { double }
  let(:ansi_code) { double }

  before do
    allow(Megingiard::AnsiColors).to receive(:new)
      .and_return(ansi_colors)
  end

  describe 'initialize' do
    it 'should create the ANSI escape sequence with the according code' do
      expect(ansi_colors).to receive(:fetch)
        .with(name)
        .and_return(color_code)
      expect(color_code).to receive(:+)
        .with(30)
        .and_return(ansi_code)
      expect(Megingiard::AnsiEscapeSequence).to receive(:new)
        .with(ansi_code)

      subject.new(name)
    end
  end
end
