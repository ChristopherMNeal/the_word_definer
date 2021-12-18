require 'rspec'
require 'defi'
require 'word'
require 'pry'

describe '#Defi' do

  before(:each) do
    Word.clear()
    Defi.clear()
    @word = Word.new({defi: "to trick someone"})
    @word.save()
  end

  describe('#==') do
    it("is the same definition if it has the same attributes as another definition") do
      defi = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi2 = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      expect(defi).to(eq(defi2))
    end
  end

  describe('.all') do
    it("returns a list of all definitions") do
      defi = Defi.new({defi: "to trick someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi2.save()
      expect(Defi.all).to(eq([defi, defi2]))
    end
  end

  describe('.clear') do
    it("clears all definitions") do
      defi = Defi.new({defi: "to trick someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi2.save()
      Defi.clear()
      expect(Defi.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a definition") do
      defi = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi.save()
      expect(Defi.all).to(eq([defi]))
    end
  end

  describe('.find') do
    it("finds a definition by id") do
      defi = Defi.new({defi: "to trick someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi2.save()
      expect(Defi.find(defi.id)).to(eq(defi))
    end
  end

  describe('#update') do
    it("updates an definition by id") do
      defi = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi.save()
      defi.update("to dupe someone", @word.id)
      expect(defi.defi).to(eq("to dupe someone"))
    end
  end

  describe('#delete') do
    it("deletes an definition by id") do
      defi = Defi.new({defi: "to trick someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi2.save()
      defi.delete()
      expect(Defi.all).to(eq([defi2]))
    end
  end
  describe('.find_by_word') do
    it("finds defitions for an word") do
      word2 = Word.new({defi: "Bamboozle", id: nil})
      word2.save
      defi = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi.save()
      defi2 = Defi.new({defi: "to con someone", word_id: word2.id, id: nil})
      defi2.save()
      expect(Defi.find_by_word(word2.id)).to(eq([defi2]))
    end
  end

  describe('#word') do
    it("finds the word a definition belongs to") do
      defi = Defi.new({defi: "to fool someone", word_id: @word.id, id: nil})
      defi.save()
      expect(defi.word()).to(eq(@word))
    end
  end
end