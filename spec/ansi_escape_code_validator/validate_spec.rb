require 'megingiard/ansi_escape_code_validator'

describe Megingiard::AnsiEscapeCodeValidator do
  subject { Megingiard::AnsiEscapeCodeValidator.instance }

  describe 'validate' do
    it 'should throw an exception if the sequence is too high' do
      expect do
        subject.validate(56)
      end.to raise_error(Megingiard::InvalidAnsiEscapeCode)
    end

    it 'should not throw an exception if the code is ok' do
      expect do
        subject.validate(0)
      end.not_to raise_error
    end
  end
end
