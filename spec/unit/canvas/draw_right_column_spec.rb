# -*- encoding : utf-8 -*-
require 'megingiard/canvas'

describe Megingiard::Canvas do
  subject { Megingiard::Canvas.new(output) }
  let(:node) { double }
  let(:node_as_string) { double }
  let(:centered_text) { double }
  let(:output) { double }
  let(:terminal_width) { double }
  let(:wrapped_node) { double }
  let(:wrapped_node_as_string) { double }

  before do
    stub_const('Megingiard::TERMINAL_WIDTH', terminal_width)
    allow(node).to receive(:to_s)
      .and_return(node_as_string)
    allow(output).to receive(:puts)
    allow(wrapped_node).to receive(:to_s)
      .and_return(wrapped_node_as_string)
  end

  describe 'draw_centered_row' do
    context 'left column drawn' do
      before { subject.instance_variable_set('@left_column_drawn', true) }

      it 'should put the resulting text to the output' do
        expect(output).to receive(:puts)
          .with(node_as_string)
        subject.draw_right_column(node)
      end

      it 'should know that it has not drawn a left column' do
        expect do
          subject.draw_right_column(node)
        end.to change { subject.left_column_drawn? }.to(false)
      end
    end

    context 'left column not drawn' do
      before { subject.instance_variable_set('@left_column_drawn', false) }

      it 'should prepend an empty cell to the output' do
        allow(Megingiard::Node).to receive(:new)
          .with(Megingiard::EMPTY_CELL, node)
          .and_return(wrapped_node)

        expect(output).to receive(:puts)
          .with(wrapped_node_as_string)
        subject.draw_right_column(node)
      end
    end
  end
end
