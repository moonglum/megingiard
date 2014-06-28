# -*- encoding : utf-8 -*-
require 'megingiard/emoji_node'

describe Megingiard::EmojiNode do
  describe 'length' do
    subject { Megingiard::EmojiNode.new(:smile) }

    it 'should have a length of 1' do
      expect(subject.length).to eq 1
    end
  end
end
