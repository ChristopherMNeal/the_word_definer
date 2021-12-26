require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word_to_add', :with => 'Bamboozle')
    click_on('Go!')
    expect(page).to have_content('Bamboozle')
  end
end

# describe('', {:type => :feature}) do
#   it('') do
#     visit('/words')
#     click_on('')
#     fill_in('', :with => 'Bamboozle')
#     click_on('Go!')
#     expect(page).to have_content('Bamboozle')
#   end
# end