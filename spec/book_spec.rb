require 'book'

describe Book do
  let (:book)   { described_class.new('My Lovely Book') }

  describe('#initialize') do
    it 'has a title' do
      expect(book.title).to eq('My Lovely Book')
    end

    it 'is not on loan' do
      expect(book.on_loan?).to be(false)
    end
  end

  describe('#check_out') do
    it 'sets the book to be on loan' do
      book.check_out
      expect(book).to be_on_loan
    end

    it 'raises an error if the book is already on loan' do
      book.check_out
      expect{ book.check_out }.to raise_error('item is currently on loan')
    end
  end

  describe('#check_in') do
    it 'sets the book to not be on loan' do
      book.check_out
      book.check_in
      expect(book).to_not be_on_loan
    end

    it 'raises an error if the book is not on loan' do
      expect{ book.check_in }.to raise_error('item is not currently on loan')
    end
  end
end
