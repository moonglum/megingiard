module Megingiard
  # The given ANSI escape sequence was not valid
  class InvalidAnsiColorCode < ArgumentError
  end

  # Color codes for ANSI color names
  class AnsiColors
    ANSI_COLOR_MAP = {
      red: 1,
      green: 2,
      yellow: 3,
      blue: 4,
      magenta: 5,
      cyan: 6,
      white: 7
    }

    def initialize(ansi_color_map = ANSI_COLOR_MAP)
      @ansi_color_map = ansi_color_map
    end

    # Get the ANSI color name or throw an exception
    def fetch(name)
      @ansi_color_map.fetch(name)
    rescue
      raise InvalidAnsiColorCode
    end
  end
end
