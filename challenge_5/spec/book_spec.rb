require './lib/book.rb'

describe Book do
  before do
    @book = Book.new(500, 'Coding As Food', 'Yvonne Ochman', 2014, 'Pragmatic Not')
  end

  it 'has 50 pages' do
    expect(@book.pages).to eq 500
  end

  it 'has an author' do
    expect(@book.author).to eq 'Yvonne Ochman'
  end

  it 'has a publishing_year' do
    expect(@book.publishing_year).to eq 2014
  end

  it 'has a publisher' do
    expect(@book.publisher).to eq 'Pragmatic Not'
  end

  it 'has a title' do
    expect(@book.title).to eq 'Coding As Food'
  end

  it 'should return a source citation of the book' do
    expect(@book.citation).to eq 'Thomas Ochman, Coding As A Craft, Pragmatic Sweden, 2016, 50'
  end

end
