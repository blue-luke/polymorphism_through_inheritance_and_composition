require 'author'

describe Author do
  let (:author)   { described_class.new("Jane Smith", "555 5555") }

  describe('#initialize') do
    it 'has a name' do
      expect(author.name).to eq("Jane Smith")
    end

    it 'has a telephone number' do
      expect(author.number).to eq("555 5555")
    end
  end

end