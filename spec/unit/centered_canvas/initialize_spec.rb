# -*- encoding : utf-8 -*-
require 'megingiard/centered_canvas'

describe Megingiard::CenteredCanvas do
  subject { Megingiard::CenteredCanvas.new(output) }
  let(:output) { double }

  describe 'initialize' do
    its(:left_column_drawn?) { should be false }
  end
end
