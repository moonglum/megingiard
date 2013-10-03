# -*- encoding : utf-8 -*-
require 'utf8_emoji'
require 'megingiard/hash_wrapper'

module Megingiard
  # There is no Emoji known with this name
  class InvalidEmojiName < ArgumentError
  end

  # Name to Emoji Wrapper
  EMOJIS = HashWrapper.new(Utf8Emoji.emojis, InvalidEmojiName)
end
