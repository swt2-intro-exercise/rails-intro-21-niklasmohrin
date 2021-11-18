require 'rails_helper'

describe 'New author page', type: :feature do
  it 'should contain the table of authors' do
    visit authors_path
    expect(page).to have_table
    within 'table' do
      expect(page).to have_css 'th', text: 'Name'
      expect(page).to have_css 'th', text: 'Homepage'
    end
  end

  it 'should have a link to create a new author' do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end
