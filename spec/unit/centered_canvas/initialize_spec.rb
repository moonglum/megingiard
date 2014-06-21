# -*- encoding : utf-8 -*-
require 'megingiard/centered_canvas'

describe Megingiard::CenteredCanvas do
  subject { Megingiard::CenteredCanvas.new(output) }
  let(:output) { double }

  describe 'initialize' do
    it 'should know that the left column has been drawn' do
      expect(subject.left_column_drawn?).to be false
    end
  end
end
