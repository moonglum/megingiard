# -*- encoding : utf-8 -*-
require 'megingiard/canvas'

module Megingiard
  # The left half of a full-width row with right aligned content
  class LeftColumn < Canvas
    def draw
      right_adjusted_text = node.to_s.rjust(terminal_width / 2)
      output.puts right_adjusted_text
    end
  end
end
