# -*- encoding : utf-8 -*-
require 'singleton'

module Megingiard
  # The given ANSI escape sequence was not valid
  class InvalidAnsiEscapeCode < ArgumentError
  end

  # Validator for ANSI escape sequence
  class AnsiEscapeCodeValidator
    include Singleton

    VALID_ESCAPE_CODES = 0..55

    # Validate an ANSI escape sequence
    def validate(code)
      fail InvalidAnsiEscapeCode unless VALID_ESCAPE_CODES.include?(code)
    end
  end
end
