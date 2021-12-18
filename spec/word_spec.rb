require 'rspec'
require 'word'
require 'pry'

describe '#Word' do

  before(:each) do
    Word.clear()
  end
  
  describe('.all') do
    it("returns all the words in the Word classes, or an empty array if there are none") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a word to the @@words class variable") do
      word1 = Word.new({name: "bamboozle"})
      word1.save()
      word2 = Word.new({name: "hoodwink"})
      word2.save()
      expect(Word.all).to(eq([word1, word2]))
    end
  end

  describe('==') do
    it("allows '==' to equate two Word objects with the same attributes") do
      word1 = Word.new({name: "bamboozle"})
      word4 = Word.new({name: "bamboozle"})
      expect(word1).to(eq(word4))
    end
  end

  describe('.clear') do
    it("clears all words saved in @@words class variable") do
      word1 = Word.new({name: "bamboozle"})
      word1.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
    it("will reset the id to start at 1") do
      word3 = Word.new({name: "hornswoggle"})
      word3.save()
      expect(word3.id).to(eq(1))
    end
  end

  describe('.find') do
    it("finds a word by the word's id") do
    word2 = Word.new({name: "hoodwink"})
    word2.save()
    word3 = Word.new({name: "hornswoggle"})
    word3.save()
    expect(Word.find(word3.id)).to(eq(word3))
    end
  end

  describe('#update') do
    it("updates a word's word") do
      word1 = Word.new({name: "dupe"})
      word1.save
      word1.update("snooker")
      expect(word1.name).to(eq("snooker"))
    end
  end

  describe('#delete') do
    it("deletes a word") do
      word1 = Word.new({name: "trick"})
      word1.save
      word2 = Word.new({name: "beguile"})
      word2.save
      word1.delete()
      expect(Word.all).to(eq([word2]))
    end
  end
end

describe('#defi') do
  it("return a word's definitions") do
    word1 = Word.new({name: "trick"})
    word1.save
    defi1 = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
    defi1.save
    defi2 = Defi.new({defi: "to trick someone", word_id: @word.id, id: nil})
    defi2.save
    expect(word1.defis).to(eq([defi1, defi2]))
  end
end