module Megingiard
  # A node with centered content
  class CenteredNode
    def initialize(width, text)
      @width = width
      @text = text
    end

    def to_s
      @text.to_s.center(@width)
    end
  end
end
