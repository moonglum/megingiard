# -*- encoding : utf-8 -*-
require 'megingiard/terminal_width'

module Megingiard
  # An area that can be drawn on
  class Canvas
    def initialize(output)
      @output = output
    end

    # The left half of a full-width row with right aligned content
    def draw_left_column(node)
      right_adjusted_text = node.to_s.rjust(TERMINAL_WIDTH / 2)
      @output.print right_adjusted_text
    end

    # The right half of a full-width row
    def draw_right_column(node)
      @output.puts node.to_s
    end

    # A full-width row where the content is centered
    def draw_centered_row(node)
      centered_text = node.to_s.center(TERMINAL_WIDTH)
      @output.puts centered_text
    end
  end
end
