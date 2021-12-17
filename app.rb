require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/definition')

get('/') do

end

get('/words') do
  
end

get('words/new') do

end

get('words/:id') do
  
end

post('/words') do

end

get('/words/:id/edit') do

end

patch('/words/:id') do

end

delete('/albums/:id') do

end

