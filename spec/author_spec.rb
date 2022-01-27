require 'author'

class DummyAuthorClass
  include Author
end

describe DummyAuthorClass do
  let (:dummy_author_class)   { described_class.new("Jane Smith", "555 5555") }

  describe('#initialize') do
    it 'has a name' do
      expect(dummy_author_class.name).to eq("Jane Smith")
    end

    it 'has a telephone number' do
      expect(dummy_author_class.number).to eq("555 5555")
    end
  end

end