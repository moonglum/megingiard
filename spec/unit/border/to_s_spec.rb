require 'megingiard/border'

describe Megingiard::Border do
  let(:terminal_width) { 10 }
  let(:border_symbols) do
    {
      somewhere: %w(l m r)
    }
  end
  let(:info) { double('Info', length: 4) }
  let(:info_node) { 'test' }

  before do
    stub_const('Megingiard::Border::TERMINAL_WIDTH_WITHOUT_EDGES', terminal_width - 2)
    stub_const('Megingiard::BORDER_SYMBOLS', border_symbols)
    allow(Megingiard::CenteredNode).to receive(:new)
      .with(6, info)
      .and_return(info_node)
  end

  subject { Megingiard::Border.new(:somewhere, info) }

  describe 'to_s' do
    it 'should work' do
      expect(subject.to_s).to eq 'lmmtestmmr'
    end
  end
end
