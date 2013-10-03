# -*- encoding : utf-8 -*-
require 'megingiard/emoji_node'

describe Megingiard::EmojiNode do
  subject { Megingiard::EmojiNode.new(emoji_name) }
  let(:emoji_name) { double }
  let(:emoji) { double }

  before do
    allow(Megingiard::EMOJIS).to receive(:fetch)
      .with(emoji_name)
      .and_return(emoji)
  end

  describe 'to_s' do
    it 'should be the Emoji from the according Emoji collection' do
      expect(subject.to_s).to eq(emoji)
    end
  end
end
