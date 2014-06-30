require 'megingiard/centered_canvas'

describe Megingiard::CenteredCanvas do
  let(:terminal_width) { double('TerminalWidth') }
  let(:centered_node) { double('CenteredNode') }
  let(:output) { double('Output') }

  before do
    stub_const('Megingiard::TERMINAL_WIDTH', terminal_width)
    allow(Megingiard::Border).to receive(:new)
      .and_return(centered_node)
    allow(output).to receive(:puts)
  end

  subject { Megingiard::CenteredCanvas.new(output) }

  describe 'end_border' do
    it 'should put the centered node' do
      expect(output).to receive(:puts)
        .with(centered_node)
      subject.end_border
    end

    it 'should provide the right orientation' do
      expect(Megingiard::Border).to receive(:new)
        .with(:bottom, anything)
      subject.end_border
    end

    it 'should forward the provided info' do
      message = double('Message')
      expect(Megingiard::Border).to receive(:new)
        .with(anything, message)
      subject.end_border(message)
    end
  end
end
