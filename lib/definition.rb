# require ('pry')

# class Defi
#   attr_reader :id
#   attr_accessor :name, :word_id

#   @@defis = {}
#   @@total_rows = 0

#   def initialization(attributes)
#     @defi = attributes.fetch(:defintion)
#     @word_id = attributes.fetch(:word_id)
#     @id = attributes[:id] || @@total_rows += 1
#   end

#   def self.all()
#     @@defis.values()
#   end

#   def save
#     @@defis[self.id] = Defi.new({defi: defi, id: id})
#   end

#   def ==(defi_to_compare)
#     (self.defi() == defi_to_compare.defi()) && (self.word_id() == defi_to_compare.word_id())
#   end

# end