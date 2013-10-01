require 'megingiard/ansi_escape_code_validator'

module Megingiard
  # As the name suggests
  class AnsiEscapeSequence
    def initialize(code)
      AnsiEscapeCodeValidator.instance.validate(code)
      @code = code
    end

    def to_s
      "\e[#{@code}m"
    end
  end
end
