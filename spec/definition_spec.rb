require 'rspec'
require 'word'
require 'definition'
require 'pry'

describe '#Defintion' do

  before(:each) do
  end

  describe('.all') do
    it("returns an empty array if there are no definitions") do
      expect(Definition.all).to(eq([]))
    end

    # it("returns a list of all definitions") do
    #   definition1 = Definition.new({definition: "to fool someone"})
    #   definition1.save
    #   definition2 = Definition.new({definition: "to scam someone"})
    #   definition2.save
    #   expect(Definition.all).to(eq([definition1, definition2]))
    # end
  end

  describe('') do
    it("") do
    end
  end

  describe('') do
    it("") do
    end
  end
end