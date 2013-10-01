module Megingiard
  # A node with arbitrary many children
  class Node
    def initialize(*children)
      @children = children
    end

    def to_s
      @children.map(&:to_s).reduce(:+)
    end
  end
end
