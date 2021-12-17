# require 'rspec'
# require 'word'
# require 'definition'
# require 'pry'

# describe '#Defintion' do

#   before(:each) do
#   end

#   describe('.all') do
#     it("returns an empty array if there are no definitions") do
#       expect(Definition.all).to(eq([]))
#     end

#     # it("returns a list of all definitions") do
#     #   definition1 = Definition.new({definition: "to fool someone", album_id: @album.id})
#     #   definition1.save
#     #   definition2 = Definition.new({definition: "to scam someone", album_id: @album.id})
#     #   definition2.save
#     #   expect(Definition.all).to(eq([definition1, definition2]))
#     # end
#   end

#   describe('#==') do
#     it("allows '==' to equate two Definition objects with the same attributes") do
#       definition1 = Definition.new({definition: "to fool someone", album_id: @album.id})
#       definition2 = Definition.new({definition: "to fool someone", album_id: @album.id})
#       expect(definition1).to(eq(definition2))
#     end
#   end


#   # describe('#save') do
#   #   it("saves a definition to the class variable") do
#   #     definition1 = Definition.new({definition: "to fool someone", album_id: @album.id, id: nil})
#   #     definition1.save
#   #     expect(Definition.all).to(eq([definition1]))
#   #   end
#   # end

#   describe('') do
#     it("") do
#     end
#   end
# end