# -*- encoding : utf-8 -*-
require 'megingiard/ansi_colors'

describe Megingiard::AnsiColors do
  describe 'initialize' do
    it 'should default to the ANSI color map' do
      chosen_map = subject.instance_variable_get('@ansi_color_map')
      expect(chosen_map).to eq Megingiard::AnsiColors::ANSI_COLOR_MAP
    end
  end
end
