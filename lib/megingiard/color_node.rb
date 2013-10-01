# -*- encoding : utf-8 -*-
require 'megingiard/text_color_sequence'
require 'megingiard/reset_sequence'

module Megingiard
  # A node that colors all its children in a given color
  class ColorNode
    def initialize(color_name, child)
      @color_sequence = TextColorSequence.new(color_name)
      @child = child
    end

    def to_s
      "#{@color_sequence}#{@child}#{RESET_SEQUENCE}"
    end
  end
end
