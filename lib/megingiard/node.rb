# -*- encoding : utf-8 -*-
module Megingiard
  # A node with arbitrary many children
  class Node
    def initialize(*children)
      @children = children
    end

    def to_s
      sum_children_attribute(:to_s)
    end

    def length
      sum_children_attribute(:length)
    end

    private

    def sum_children_attribute(attribute)
      @children.map(&attribute).reduce(:+)
    end
  end
end
