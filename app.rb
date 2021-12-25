require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/defi')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  redirect to('/words')
end

get('/words') do
  @words = Word.all
  erb(:words)
end

get('/words/new') do
  erb(:new_word)
end

get('/words/:id') do
  @word = Word.find(params[:id].to_i())
  erb(:word)
end

post('/words') do
  add_word = params[:word_to_add]
  word = Word.new({name: add_word})
  word.save()
  redirect to('/words')
end

get('/words/:id/edit') do
  @word = Word.find(params[:id].to_i())
  erb(:edit_word)
end

patch('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.update(params[:word])
  redirect to('/words')
end

delete('/words/:id') do
  @word = Word.find(params[:id].to_i())
  @word.delete()
  redirect to('/words')
end

get('/words/:id/defis/:defi_id') do
  @defi = Defi.find(params[:id].to_i())
  erb(:defi)
end

post('/words/:id/defis') do
  @word = Word.find(params[:id].to_i())
  defi = Defi.new({name: params[:defi_name], word_id: @word.id, id: nil})
  defi.save()
  erb(:word)
end
