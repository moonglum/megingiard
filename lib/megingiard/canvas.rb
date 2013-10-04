# -*- encoding : utf-8 -*-

module Megingiard
  # An area that can be drawn on
  Canvas = Struct.new(:output, :terminal_width) do
    # The left half of a full-width row with right aligned content
    def draw_left_column(node)
      right_adjusted_text = node.to_s.rjust(terminal_width / 2)
      output.print right_adjusted_text
    end

    # A full-width row where the content is centered
    def draw_centered_row(node)
      centered_text = node.to_s.center(terminal_width)
      output.puts centered_text
    end
  end
end
