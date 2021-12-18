require 'rspec'
require 'word'
require 'definition'
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

  describe('') do
    it("") do
    end
  end
end