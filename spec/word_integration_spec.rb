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

describe('', {:type => :feature}) do
  it('adds a definition then goes to the definition page') do
    visit('/words')
    click_on('Bamboozle')
    fill_in('defi_name', :with => 'to trick someone')
    click_on('Add definition')
    expect(page).to have_content('to trick someone')
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