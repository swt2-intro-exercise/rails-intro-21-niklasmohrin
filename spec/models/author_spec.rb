require 'rails_helper'

describe 'Author model', type: :model do
  it 'should set the instance attributes in the constructor' do
    author = Author.new('Alan', 'Turing', 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
  end
end
