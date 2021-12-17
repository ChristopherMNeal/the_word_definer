# require ('pry')

# class Definition
#   attr_reader :id
#   attr_accessor :name, :word_id

#   @@definitions = {}
#   @@total_rows = 0

#   def initialization(attributes)
#     @definition = attributes.fetch(:defintion)
#     @word_id = attributes.fetch(:word_id)
#     @id = attributes[:id] || @@total_rows += 1
#   end

#   def self.all()
#     @@definitions.values()
#   end

#   def save
#     @@definitions[self.id] = Definition.new({definition: definition, id: id})
#   end

#   def ==(definition_to_compare)
#     (self.definition() == definition_to_compare.definition()) && (self.word_id() == definition_to_compare.word_id())
#   end

# end