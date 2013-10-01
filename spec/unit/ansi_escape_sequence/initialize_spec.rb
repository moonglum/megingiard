require 'megingiard/ansi_escape_sequence'

describe Megingiard::AnsiEscapeSequence do
  subject { Megingiard::AnsiEscapeSequence }
  let(:validator) { double }
  let(:code) { double }

  describe 'initialize' do
    it 'should validate the escape sequence' do
      allow(Megingiard::AnsiEscapeCodeValidator).to receive(:instance)
        .and_return(validator)
      expect(validator).to receive(:validate).with(code)

      subject.new(code)
    end
  end
end
