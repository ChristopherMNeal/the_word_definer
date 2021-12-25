require 'rspec'
require 'word'
require 'defi'
require 'pry'

describe '#Defintion' do

  before(:each) do
    Word.clear()
    Defi.clear()
    @word = Word.new({name: "bamboozle", id: nil})
    @word.save()
  end

  describe('.all') do
    it("returns an empty array if there are no definitions") do
      expect(Defi.all).to(eq([]))
    end

    it("returns a list of all definitions") do
      defi1 = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi1.save
      defi2 = Defi.new({name: "to scam someone", word_id: @word.id, id: nil})
      defi2.save
      expect(Defi.all).to(eq([defi1, defi2]))
    end
  end

  describe('#==') do
    it("allows '==' to equate two definition objects with the same attributes") do
      defi1 = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi2 = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      expect(defi1).to(eq(defi2))
    end
  end

  describe('#save') do
    it("saves a definition to the class variable") do
      defi1 = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi1.save
      expect(Defi.all).to(eq([defi1]))
    end
  end

  describe('.clear') do
    it("clears all definitions") do
      defi = Defi.new({name: "to beguile someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi2.save()
      Defi.clear()
      expect(Defi.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a definition by id") do
      defi = Defi.new({name: "to beguile someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi2.save()
      expect(Defi.find(defi.id)).to(eq(defi))
    end
  end

  describe('.find_by_word') do
    it("finds definitions for an word") do
      word2 = Word.new({name: "Hoodwink", id: nil})
      word2.save
      defi = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({name: "to trick someone", word_id: word2.id, id: nil})
      defi2.save()
      expect(Defi.find_by_word(word2.id)).to(eq([defi2]))
    end
  end

  describe('#update') do
    it("updates an definition by id") do
      defi = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi.save()
      defi.update("to trick someone", @word.id)
      expect(defi.name).to(eq("to trick someone"))
    end
  end

  describe('#delete') do
    it("deletes an definition by id") do
      defi = Defi.new({name: "to beguile someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi2.save()
      defi.delete()
      expect(Defi.all).to(eq([defi2]))
    end
  end

  describe('#word') do
    it("finds the word a definition belongs to") do
      defi = Defi.new({name: "to fool someone", word_id: @word.id, id: nil})
      defi.save()
      expect(defi.word()).to(eq(@word))
    end
  end
end