# -*- encoding : utf-8 -*-
require 'megingiard/left_column'

describe Megingiard::LeftColumn do
  subject { Megingiard::LeftColumn.new(node, output, terminal_width) }
  let(:node) { double }
  let(:node_as_string) { double }
  let(:right_adjusted_text) { double }
  let(:output) { double }
  let(:terminal_width) { double }
  let(:half_terminal_width) { double }

  before do
    allow(node).to receive(:to_s)
      .and_return(node_as_string)
    allow(node_as_string).to receive(:rjust)
      .and_return(right_adjusted_text)
    allow(output).to receive(:puts)
    allow(terminal_width).to receive(:/)
      .with(2)
      .and_return(half_terminal_width)
  end

  describe 'draw' do
    it 'should to_s and right adjust the text' do
      expect(node_as_string).to receive(:rjust)
        .with(half_terminal_width)
      subject.draw
    end

    it 'should put the resulting text to the output' do
      expect(output).to receive(:puts)
        .with(right_adjusted_text)
      subject.draw
    end
  end
end
