
# location: spec/feature/integration_spec.rb
require 'rails_helper'

# Book > Title integration test
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: 14.99
    fill_in 'Author', with: "Nathan R"
    
    # fill_in 'Published_date', with: "2020 9 30"
    # fill_in 'published_date(1i)', with: "2020"
    # fill_in 'published_date(2i)', with: "9"
    # fill_in 'published_date(3i)', with: "30"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content("14.99")
    expect(page).to have_content('Nathan R')
    expect(page).to have_content("2021")

  end

#   it 'is valid with valid attributes' do
#     expect(subject).to be_valid
#   end



end

# # Book > Price integration test
# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Title', with: 'harry potter'
#     fill_in 'Price', with: 14.99
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content(14.99)
#   end
# end

# # Book > Author integration test
# RSpec.describe 'Creating a book', type: :feature do
#   scenario 'valid inputs' do
#     visit new_book_path
#     fill_in 'Title', with: 'harry potter'
#     fill_in 'Author', with: "Nathan R"
#     click_on 'Create Book'
#     visit books_path
#     expect(page).to have_content('Nathan R')
#   end
# end

# # Book > Published_date integration test
# RSpec.describe 'Creating a book', type: :feature do
#     scenario 'valid inputs' do
#       visit new_book_path
#       fill_in 'Title', with: 'harry potter'
#       fill_in 'Published_date', with: Date.new(2021, 10, 10)
#       click_on 'Create Book'
#       visit books_path
#       expect(page).to have_content(Date.new(2021, 10, 10))
#     end
#   end