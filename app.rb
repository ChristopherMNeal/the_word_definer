require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/definition')

get('/') do
  @words = Word.all
  erb(:words)
end

get('/words') do
  @words = Word.all
  erb(:words)
end

get('/words/new') do
  erb(:new_word)
end

get('words/:id') do
  @words = Word.find(params[:id].to_i())
  redirect to('/words')
end

post('/words') do
  add_word = params[:word_to_add]
  word = Word.new({word: add_word})
  word.save()
  redirect to('/words')
end

get('/words/:id/edit') do

end

patch('/words/:id') do

end

delete('/words/:id') do

end