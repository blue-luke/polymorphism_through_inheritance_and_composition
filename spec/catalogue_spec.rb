require 'library_catalogue'

describe LibraryCatalogue do
  let(:catalogue)   { described_class.new }
  let(:book)        { double :book }

  describe '#initialize' do
    it('starts with an empty item list') do
      expect(catalogue.items).to be_empty
    end
  end

  describe '#add_to_stock' do
    it('adds an item to the item list') do
      catalogue.add_to_stock(book)
      expect(catalogue.items).to include(book)
    end
  end

  describe '#check_out' do
    it('checks out an item in stock') do
      catalogue.add_to_stock(book)
      expect(book).to receive(:check_out)
      catalogue.check_out(book)
    end

    it('raises an error if an item is not in stock') do
      expect{ catalogue.check_out(book) }.to raise_error('item is not held')
    end
  end

  describe '#check_in' do
    it('checks in an item') do
      catalogue.add_to_stock(book)
      expect(book).to receive(:check_in)
      catalogue.check_in(book)
    end

    it('raises an error if an item is not in stock') do
      expect{ catalogue.check_in(book) }.to raise_error('item is not held')
    end
  end
end
