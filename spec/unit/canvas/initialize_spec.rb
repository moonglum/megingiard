# -*- encoding : utf-8 -*-
require 'megingiard/canvas'

describe Megingiard::Canvas do
  subject { Megingiard::Canvas.new(output) }
  let(:output) { double }

  describe 'initialize' do
    its(:left_column_drawn?) { should be false }
  end
end
