# -*- encoding : utf-8 -*-
require 'megingiard/canvas'

module Megingiard
  # A full-width row where the content is centered
  class CenteredRow < Canvas
    def draw
      centered_text = node.to_s.center(terminal_width)
      output.puts centered_text
    end
  end
end
