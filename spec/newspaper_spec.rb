require 'newspaper'

describe Newspaper do
  let (:paper)   { described_class.new('The Bad News') }

  describe('#initialize') do
    it 'has a title' do
      expect(paper.title).to eq('The Bad News')
    end

    it 'is not on loan' do
      expect(paper.on_loan?).to be(false)
    end
  end

  describe('#check_out') do
    it 'raises an error' do
      expect{ paper.check_out }.to raise_error('newspapers are not available for loan')
    end
  end

  describe('#check_in') do
    it 'raises an error' do
      expect{ paper.check_in }.to raise_error('newspapers are not available for loan')
    end
  end
end
