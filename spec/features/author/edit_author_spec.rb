require 'rails_helper'

describe 'New author page', type: :feature do
  it 'should save edits made in the edit form to the db' do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
    page.fill_in 'author[first_name]', with: 'Ada'
    find('input[type="submit"]').click
    @alan.reload
    expect(@alan.first_name).to be == 'Ada'
  end
end
