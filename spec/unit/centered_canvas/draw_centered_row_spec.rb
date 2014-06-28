# -*- encoding : utf-8 -*-
require 'megingiard/centered_canvas'

describe Megingiard::CenteredCanvas do
  subject { Megingiard::CenteredCanvas.new(output) }
  let(:node) { double }
  let(:centered_text) { double }
  let(:output) { double }
  let(:terminal_width) { double }
  let(:centered_output) { double }

  before do
    stub_const('Megingiard::TERMINAL_WIDTH', terminal_width)
    allow(Megingiard::CenteredNode).to receive(:new)
      .and_return(centered_output)
    allow(centered_output).to receive(:to_s)
      .and_return(centered_text)
    allow(output).to receive(:puts)
  end

  describe 'draw_centered_row' do
    context 'left column was not drawn' do
      before { subject.instance_variable_set('@left_column_drawn', false) }

      it 'should center the node' do
        expect(Megingiard::CenteredNode).to receive(:new)
          .with(terminal_width, node)
        subject.draw_centered_row(node)
      end
    end

    context 'left column was drawn' do
      before { subject.instance_variable_set('@left_column_drawn', true) }

      it 'should know that it has not drawn a left column' do
        expect do
          subject.draw_centered_row(node)
        end.to change { subject.left_column_drawn? }.to(false)
      end

      it 'should put the resulting text to the output' do
        expect(output).to receive(:puts)
          .with(centered_text)
        subject.draw_centered_row(node)
      end
    end
  end
end
