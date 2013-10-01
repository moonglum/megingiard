# -*- encoding : utf-8 -*-
require 'megingiard/bold_sequence'
require 'megingiard/reset_sequence'

module Megingiard
  # A node that makes all its children bold
  class BoldNode
    def initialize(child)
      @child = child
    end

    def to_s
      "#{BOLD_SEQUENCE}#{@child}#{RESET_SEQUENCE}"
    end
  end
end
