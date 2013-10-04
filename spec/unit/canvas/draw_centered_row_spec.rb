# -*- encoding : utf-8 -*-
require 'megingiard/canvas'

describe Megingiard::Canvas do
  subject { Megingiard::Canvas.new(output, terminal_width) }
  let(:node) { double }
  let(:node_as_string) { double }
  let(:centered_text) { double }
  let(:output) { double }
  let(:terminal_width) { double }

  before do
    allow(node).to receive(:to_s)
      .and_return(node_as_string)
    allow(node_as_string).to receive(:center)
      .and_return(centered_text)
    allow(output).to receive(:puts)
  end

  describe 'draw_centered_row' do
    it 'should to_s and center the text' do
      expect(node_as_string).to receive(:center)
        .with(terminal_width)
      subject.draw_centered_row(node)
    end

    it 'should put the resulting text to the output' do
      expect(output).to receive(:puts)
        .with(centered_text)
      subject.draw_centered_row(node)
    end
  end
end
