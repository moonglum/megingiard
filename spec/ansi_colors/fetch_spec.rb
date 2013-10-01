require 'megingiard/ansi_colors'

describe Megingiard::AnsiColors do
  let(:color_map) { double }
  let(:color) { double }
  let(:color_code) { double }
  let(:other_error) { double }
  subject { Megingiard::AnsiColors.new(color_map) }

  describe 'fetch' do
    it 'should get the according color via fetch' do
      expect(color_map).to receive(:fetch)
        .with(color)
      subject.fetch(color)
    end

    it 'should return the fetched color' do
      allow(color_map).to receive(:fetch)
        .and_return(color_code)
      expect(subject.fetch(color)).to be color_code
    end

    it 'should raise an error for an unknown color' do
      allow(color_map).to receive(:fetch)
        .and_raise(KeyError)

      expect do
        subject.fetch(color)
      end.to raise_error(Megingiard::InvalidAnsiColorCode)
    end
  end
end
