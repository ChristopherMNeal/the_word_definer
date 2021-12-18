require("pry")

class Word
  attr_reader :id, :name

  @@words = {}
  @@total_rows = 0

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = attributes[:id] || @@total_rows += 1
  end

  def self.all()
    @@words.values()
  end

  def save
    @@words[self.id] = Word.new({name: name, id: id})
  end

  def ==(word_to_compare)
    self.name() == word_to_compare.name()
  end

  def self.search(name_searched)
    arr_results = []
    @@words.values.each do |word|
      if word.name == name_searched
        arr_results.push(word)
      end
    end
    arr_results
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@words[id]
  end

  def update(name)
    @name = name
  end

  def delete
    @@words.delete(self.id)
  end

  def defis
    Defi.find_by_word(self.id)
  end
end
