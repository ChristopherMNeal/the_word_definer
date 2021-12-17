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

  describe('==') do
    it("will allow '==' to equate two Word objects with the same attributes") do
      word1 = Word.new({word: "bamboozle", id: nil})
      word1.save()
      word4 = Word.new({word: "bamboozle", id: nil})
      word4.save()
      expect(word1).to(eq(word4))
    end
  end

  describe('.clear') do
    it("will clear all words saved in @@words class variable") do
      Word.clear()
      expect(Word.all).to(eq([]))
    end
    it("will reset the id to start at 1") do
      Word.clear()
      word3 = Word.new({word: "hornswoggle", id: nil})
      word3.save()
      expect(word3.id).to(eq(1))
    end

  end
end

