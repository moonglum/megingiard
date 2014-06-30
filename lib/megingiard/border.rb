require 'megingiard/terminal_width'
require 'megingiard/centered_node'
require 'megingiard/border_symbols'

module Megingiard
  # Draw a border either above or beneath something
  class Border
    TERMINAL_WIDTH_WITHOUT_EDGES = TERMINAL_WIDTH - 2

    def initialize(orientation, info)
      @info = info
      @left_edge, @middle_piece, @right_edge = BORDER_SYMBOLS.fetch(orientation)
    end

    def to_s
      "#{@left_edge}#{half_border}#{info}#{half_border}#{@right_edge}"
    end

    private

    def info
      return '' if @info == ''
      CenteredNode.new(@info.length + 2, @info)
    end

    def half_border
      @middle_piece * half_border_width
    end

    def half_border_width
      border_width / 2
    end

    def border_width
      TERMINAL_WIDTH_WITHOUT_EDGES - info_length
    end

    def info_length
      info.length
    end
  end
end
