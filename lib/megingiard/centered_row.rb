# -*- encoding : utf-8 -*-
require 'megingiard/terminal_width'

module Megingiard
  # A full-width row where the content is centered
  class CenteredRow
    def initialize(node, output, terminal_width)
      @node = node
      @output = output
      @terminal_width = terminal_width
    end

    def draw
      centered_text = @node.to_s.center(@terminal_width)
      @output.puts centered_text
    end
  end
end
