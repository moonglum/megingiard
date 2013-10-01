# -*- encoding : utf-8 -*-
require 'megingiard/text_color_sequence'

describe Megingiard::TextColorSequence do
  subject { Megingiard::TextColorSequence.new(name) }
  let(:color_code) { double(Integer, { :+ => ansi_code  }) }
  let(:ansi_colors) { double(Megingiard::AnsiColors, { fetch: color_code }) }
  let(:name) { double }
  let(:ansi_code) { double }
  let(:ansi_escape_sequence) { double }
  let(:ansi_escape_sequence_as_string) { double }

  before do
    allow(Megingiard::AnsiColors).to receive(:new)
      .and_return(ansi_colors)
    allow(Megingiard::AnsiEscapeSequence).to receive(:new)
      .and_return(ansi_escape_sequence)
  end

  describe 'to_s' do
    it 'should return the String representation of the escape sequence' do
      allow(ansi_escape_sequence).to receive(:to_s)
        .and_return(ansi_escape_sequence_as_string)
      expect(subject.to_s).to eq(ansi_escape_sequence_as_string)
    end
  end
end
