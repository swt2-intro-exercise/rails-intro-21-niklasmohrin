require 'rails_helper'

describe 'Author model', type: :model do
  it 'should set the instance attributes in the constructor' do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
    expect(author.name).to eq('Alan Turing')
  end

  it 'should fail when no last name is provided' do
    author = Author.new(first_name: 'Alan', last_name: '', homepage: 'example.com')
    expect(author).to_not be_valid
  end
end
