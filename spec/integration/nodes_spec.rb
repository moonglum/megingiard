# -*- encoding : utf-8 -*-
require 'megingiard/node'
require 'megingiard/color_node'
require 'megingiard/bold_node'

describe 'Nodes' do
  it 'should combine color, bold and normal nodes' do
    red_node = Megingiard::ColorNode.new(:red, 'rot')
    text_node = Megingiard::Node.new('Dieser Text ist ', red_node)
    bold_node = Megingiard::BoldNode.new(text_node)

    expect(bold_node.to_s).to eq "\e[1mDieser Text ist \e[31mrot\e[0m\e[0m"
  end
end
