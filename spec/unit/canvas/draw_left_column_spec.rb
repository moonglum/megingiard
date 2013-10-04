# -*- encoding : utf-8 -*-
require 'megingiard/canvas'

describe Megingiard::Canvas do
  subject { Megingiard::Canvas.new(output) }
  let(:node) { double }
  let(:node_as_string) { double }
  let(:right_adjusted_text) { double }
  let(:output) { double }
  let(:half_terminal_width) { double }

  before do
    stub_const('Megingiard::HALF_TERMINAL_WIDTH', half_terminal_width)
    allow(node).to receive(:to_s)
      .and_return(node_as_string)
    allow(node_as_string).to receive(:rjust)
      .and_return(right_adjusted_text)
    allow(output).to receive(:print)
  end

  describe 'draw_left_column' do
    it 'should to_s and right adjust the text' do
      expect(node_as_string).to receive(:rjust)
        .with(half_terminal_width)
      subject.draw_left_column(node)
    end

    it 'should put the resulting text to the output' do
      expect(output).to receive(:print)
        .with(right_adjusted_text)
      subject.draw_left_column(node)
    end
  end
end
