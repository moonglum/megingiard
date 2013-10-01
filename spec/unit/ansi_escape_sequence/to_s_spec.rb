require 'megingiard/ansi_escape_sequence'

describe Megingiard::AnsiEscapeSequence do
  let(:code) { double('Integer', { to_s: code_as_string }) }
  let(:code_as_string) { '1' }
  let(:validator) { double }

  subject { Megingiard::AnsiEscapeSequence.new(code) }

  before do
    allow(Megingiard::AnsiEscapeCodeValidator).to receive(:instance)
      .and_return(validator)
    allow(validator).to receive(:validate)
  end

  describe 'to_s' do
    it 'should convert the code into a string' do
      expect(code).to receive(:to_s)
      subject.to_s
    end

    it 'should return the code as an escape sequence' do
      expect(subject.to_s).to eq "\e[#{code_as_string}m"
    end
  end
end
