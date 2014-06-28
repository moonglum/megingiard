module Megingiard
  # A node with centered content
  class CenteredNode
    def initialize(width, text)
      @width = width
      @text = text
    end

    def length
      @width
    end

    def to_s
      "#{padding}#{@text}#{padding}#{extra_padding}"
    end

    private

    def extra_padding
      ' ' if inner_width.odd?
    end

    def padding
      (' ' * padding_width)
    end

    def padding_width
      (@width - inner_width) / 2
    end

    def inner_width
      @text.length
    end
  end
end
