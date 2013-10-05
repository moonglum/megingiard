# -*- encoding : utf-8 -*-
require 'megingiard/canvas'

describe Megingiard::Canvas do
  subject { Megingiard::Canvas.new(output) }
  let(:node) { double }
  let(:node_as_string) { double }
  let(:right_adjusted_text) { double }
  let(:output) { double }
  let(:cell_width) { double }

  before do
    stub_const('Megingiard::CELL_WIDTH', cell_width)
    allow(node).to receive(:to_s)
      .and_return(node_as_string)
    allow(node_as_string).to receive(:rjust)
      .and_return(right_adjusted_text)
    allow(output).to receive(:print)
  end

  describe 'draw_left_column' do
    it 'should to_s and right adjust the text' do
      expect(node_as_string).to receive(:rjust)
        .with(cell_width)
      subject.draw_left_column(node)
    end

    it 'should print the resulting text to the output' do
      expect(output).to receive(:print)
        .with(right_adjusted_text)
      subject.draw_left_column(node)
    end

    it 'should know that it has drawn a left column' do
      expect do
        subject.draw_left_column(node)
      end.to change { subject.left_column_drawn? }.to(true)
    end
  end
end
