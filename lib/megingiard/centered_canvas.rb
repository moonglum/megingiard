# -*- encoding : utf-8 -*-
require 'megingiard/terminal_width'
require 'megingiard/node'
require 'megingiard/centered_node'

module Megingiard
  # An area that can be drawn on, everything is centered
  class CenteredCanvas
    def initialize(output)
      @output = output
      @left_column_drawn = false
    end

    # Check if a left column has been drawn
    def left_column_drawn?
      @left_column_drawn
    end

    # The left half of a full-width row with right aligned content
    def draw_left_column(node)
      right_adjusted_text = node.to_s.rjust(CELL_WIDTH)
      @output.print right_adjusted_text
      @left_column_drawn = true
    end

    # The right half of a full-width row
    def draw_right_column(node)
      node = Node.new(EMPTY_CELL, node) unless left_column_drawn?
      end_line_with(node)
    end

    # A full-width row where the content is centered
    def draw_centered_row(node)
      node = CenteredNode.new(TERMINAL_WIDTH, node)
      end_line_with(node)
    end

  private

    def end_line_with(element)
      @output.puts(element.to_s)
      @left_column_drawn = false
    end
  end
end
