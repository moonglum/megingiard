# -*- encoding : utf-8 -*-
require 'megingiard/centered_canvas'

describe Megingiard::CenteredCanvas do
  subject { Megingiard::CenteredCanvas.new(output) }
  let(:node) { double }
  let(:node_as_string) { double }
  let(:centered_text) { double }
  let(:output) { double }
  let(:terminal_width) { double }

  before do
    stub_const('Megingiard::TERMINAL_WIDTH', terminal_width)
    allow(node).to receive(:to_s)
      .and_return(node_as_string)
    allow(node_as_string).to receive(:center)
      .and_return(centered_text)
    allow(centered_text).to receive(:to_s)
      .and_return(centered_text)
    allow(output).to receive(:puts)
  end

  describe 'draw_centered_row' do
    context 'left column was not drawn' do
      before { subject.instance_variable_set('@left_column_drawn', false) }

      it 'should to_s and center the text' do
        expect(node_as_string).to receive(:center)
          .with(terminal_width)
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
