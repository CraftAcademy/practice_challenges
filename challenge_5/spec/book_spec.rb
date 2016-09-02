require './book.rb'

describe Book do

  before(:each) do
    @book = Book.new(pages: 50, title: "stuff", author: "me", publishing_year: 1995, publisher:"Duppis")
  end

  it 'is expected to have pages' do
    expect(@book.pages).to eq 50
  end

  it 'is expected to have title' do
    expect(@book.title).to eq "stuff"
  end


  it 'is expected to have author' do
    expect(@book.author).to eq "me"
  end

  it 'is expected to have publishing year' do
    expect(@book.publishing_year).to eq 1995
  end

  it 'is expected to have publisher' do
    expect(@book.publisher).to eq "Duppis"
  end

  it 'is expected to write out stuff when asked' do
    expect(@book.writeout(@book)).to eq "me, stuff, Duppis, 1995, 50"
  end


end
