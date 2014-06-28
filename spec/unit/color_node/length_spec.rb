# -*- encoding : utf-8 -*-
require 'megingiard/color_node'

describe Megingiard::ColorNode do
  let(:child) { double('Node', length: 12) }
  subject { Megingiard::ColorNode.new(:red, child) }

  describe 'length' do
    it 'should return the length of the child' do
      expect(subject.length).to eq child.length
    end
  end
end
