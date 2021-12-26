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

describe('', {:type => :feature}) do
  it('updates a word') do
    visit('/words')
    click_on('Bamboozle')
    click_on("Edit 'Bamboozle'")
    fill_in('word', :with => 'Hornswoggle')
    click_on('Update')
    expect(page).to have_content('Hornswoggle')
  end
end

describe('', {:type => :feature}) do
  it('deletes a word') do
    visit('/words')
    click_on('Hornswoggle')
    click_on("Edit 'Hornswoggle'")
    click_on("Delete word")
    expect(page).to have_no_content('Hornswoggle')
  end
end

describe('', {:type => :feature}) do
  it('adds a definition then changes the definition') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word_to_add', :with => 'Hoodwink')
    click_on('Go!')
    click_on('Hoodwink')
    fill_in('defi_name', :with => 'to fool someone')
    click_on('Add definition')
    click_on('to fool someone')
    fill_in('name', :with => 'to con someone')
    click_on('Update definition')
    expect(page).to have_content('to con someone')
  end
end

describe('', {:type => :feature}) do
  it('deletes a definition') do
    visit('/words')
    click_on('Hornswoggle')
    click_on("Edit 'Hornswoggle'")
    click_on("Delete word")
    expect(page).to have_no_content('Hornswoggle')
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