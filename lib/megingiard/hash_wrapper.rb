# -*- encoding : utf-8 -*-
module Megingiard
  # Only reveal fetch and translates the Error Message
  class HashWrapper
    def initialize(hash, error_class)
      @hash = hash
      @error_class = error_class
    end

    def fetch(name)
      @hash.fetch(name)
    rescue
      raise @error_class
    end
  end
end
