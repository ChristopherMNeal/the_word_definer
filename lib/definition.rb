require ('pry')

class Defi
  attr_reader :id
  attr_accessor :name, :word_id

  @@defis = {}
  @@total_rows = 0

  def initialization(attributes)
    @name = attributes.fetch(:name)
    @word_id = attributes.fetch(:word_id)
    @id = attributes.fetch(:id) || @@total_rows += 1
    # @id = attributes[:id] || @@total_rows += 1
    
  end
  
  def ==(defi_to_compare)
    (self.name() == defi_to_compare.name()) && (self.word_id() == defi_to_compare.word_id())
  end

  def self.all
    @@defis.values
  end

  def save
    @@defis[self.id] = Defi.new({name: name, word_id: word_id, id: id})
  end

  def self.clear
    @@defis = {}
  end
end