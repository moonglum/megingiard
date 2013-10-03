# -*- encoding : utf-8 -*-
require 'megingiard/emojis'
require 'megingiard/reset_sequence'

module Megingiard
  # A leaf node representing an emoji
  class EmojiNode
    def initialize(emoji_name)
      @emoji = EMOJIS.fetch(emoji_name)
    end

    def to_s
      @emoji
    end
  end
end
