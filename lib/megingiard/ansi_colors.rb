# -*- encoding : utf-8 -*-
require 'megingiard/hash_wrapper'

module Megingiard
  # The given ANSI escape sequence was not valid
  class InvalidAnsiColorCode < ArgumentError
  end

  ANSI_COLOR_MAP = {
    red: 1,
    green: 2,
    yellow: 3,
    blue: 4,
    magenta: 5,
    cyan: 6,
    white: 7
  }

  # Color codes for ANSI color names
  ANSI_COLORS = HashWrapper.new(ANSI_COLOR_MAP, InvalidAnsiColorCode)
end
