require 'rspec'
require 'word'
require 'pry'

describe '#Word' do

  before(:each) do
    # word1 = Word.new({word: "bamboozle", id: nil})
    # word1.save()
    # word2 = Word.new({word: "hoodwink", id: nil})
    # word2.save()
    # word3 = Word.new({word: "hornswoggle", id: nil})
    # word3.save()
    # "bamboozle, hoodwink, hornswoggle"
  end
  
  # after(:each) do
  #   Word.clear()
  # end
  
  describe('.all') do
    it("will return all the words in the Word classes, or an empty array if there are none") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it("will save a word to the @@words class variable") do
      word1 = Word.new({word: "bamboozle", id: nil})
      word1.save()
      word2 = Word.new({word: "hoodwink", id: nil})
      word2.save()
      expect(Word.all).to(eq([word1, word2]))
    end
  end
end

