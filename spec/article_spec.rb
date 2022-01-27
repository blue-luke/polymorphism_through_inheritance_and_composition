require 'article'

describe Article do
  let (:article)   { described_class.new('My Lovely Article') }

  describe('#initialize') do
    it 'has a title' do
      expect(article.title).to eq('My Lovely Article')
    end

    it 'is not on loan' do
      expect(article.on_loan?).to be(false)
    end
  end

  describe('#check_out') do
    it 'sets the article to be on loan' do
      article.check_out
      expect(article).to be_on_loan
    end

    it 'raises an error if the article is already on loan' do
      article.check_out
      expect{ article.check_out }.to raise_error('item is currently on loan')
    end
  end

  describe('#check_in') do
    it 'sets the article to not be on loan' do
      article.check_out
      article.check_in
      expect(article).to_not be_on_loan
    end

    it 'raises an error if the article is not on loan' do
      expect{ article.check_in }.to raise_error('item is not currently on loan')
    end
  end

  describe ('#enter_author') do
    it 'enters and shows an author' do
      article.enter_author("Jane Smith", "555 5555")
      expect(article.author.name).to eq "Jane Smith"
    end
  end
end
