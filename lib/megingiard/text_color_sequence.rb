require 'megingiard/ansi_colors'
require 'megingiard/ansi_escape_sequence'

module Megingiard

  # ANSI Escape Sequence for a Text Color
  class TextColorSequence
    def initialize(name)
      color_code = AnsiColors.new.fetch(name)
      @escape_sequence = AnsiEscapeSequence.new(color_code + 30)
    end

    def to_s
      @escape_sequence.to_s
    end
  end
end
