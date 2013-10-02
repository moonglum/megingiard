# -*- encoding : utf-8 -*-
require 'megingiard/text_color_sequence'

describe Megingiard::TextColorSequence do
  subject { Megingiard::TextColorSequence }
  let(:color_code) { double }
  let(:name) { double }
  let(:ansi_code) { double }

  describe 'initialize' do
    it 'should create the ANSI escape sequence with the according code' do
      expect(Megingiard::ANSI_COLORS).to receive(:fetch)
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
