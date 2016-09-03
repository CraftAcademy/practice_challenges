require './book.rb'

describe Book do
  
  before(:each) do
    def refer_to(page)
    "#{@author}, #{@title}, #{@publisher}, #{@publishing_year}, #{page}"
    end
  end

  it 'is expected to write out a citation with pages 50' do
    book = Book.new
    expect(book.refer_to(50)).to eq "Thomas Ochman, Craft Academy, Pragmatic Sweden, 2016, 50"

  end
end
