# -*- encoding : utf-8 -*-
require 'megingiard/hash_wrapper'

describe Megingiard::HashWrapper do
  let(:hash) { double }
  let(:item) { double }
  let(:item_name) { double }
  let(:error) { ArgumentError }
  let(:other_error) { double }
  subject { Megingiard::HashWrapper.new(hash, error) }

  describe 'fetch' do
    it 'should get the according item via fetch' do
      expect(hash).to receive(:fetch)
        .with(item)
      subject.fetch(item)
    end

    it 'should return the fetched item' do
      allow(hash).to receive(:fetch)
        .and_return(item_name)
      expect(subject.fetch(item)).to be item_name
    end

    it 'should raise an error for an unknown item' do
      allow(hash).to receive(:fetch)
        .and_raise(KeyError)

      expect do
        subject.fetch(item)
      end.to raise_error(error)
    end
  end
end
