require './book.rb'

describe Book do
  
  before(:each) do
    @book = Book.new(total_pages: 150, title: "Craft Academy", author: "Thomas Ochman", publishing_year: 2016, publisher:"Pragmatic Sweden")
    def refer_to(page)
    "#{@author}, #{@title}, #{@publisher}, #{@publishing_year}, #{page}"
    end
  end

  it 'is expected to have total amount of pages' do
    expect(@book.total_pages).to eq 150
   end
 
 
  it 'is expected to have title' do
    expect(@book.title).to eq "Craft Academy"
  end


  it 'is expected to have author' do
    expect(@book.author).to eq "Thomas Ochman"
  end
 
 
  it 'is expected to have publishing year' do
    expect(@book.publishing_year).to eq 2016
   end

  it 'is expected to have publisher' do
    expect(@book.publisher).to eq "Pragmatic Sweden"
  end

  it 'is expected to write out a citation with pages 50' do
    expect(@book.refer_to(50)).to eq "Thomas Ochman, Craft Academy, Pragmatic Sweden, 2016, 50"
  end

end


