require ('pry')

class Definition
  attr_reader :id
  attr_accessor :name, :word_id

  @@definitions = {}
  @@total_rows = 0

  def initialization(attributes)
    @definition = attributes.fetch(:defintion)
    @id = attributes.fetch(:id) || @@total_rows += 1
  end

  def self.all()
    @@definitions.values()
  end

  def save
    # @@definitions[self.id] = Definition.new({definition: definition, id: id})
  end


end