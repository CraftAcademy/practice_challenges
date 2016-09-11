require './lib/book'

describe Book do

  before(:each) do
    @book = Book.new(author: "Thomas Ochman", title: "Coding As A Craft", publisher: "Pragmatic Sweden", publishing_year: 2016, pages: 50)
  end

    it 'should have an author' do
      expect(@book.author).to eq "Thomas Ochman"
    end


    it 'returns a source citation of the book' do
      expect(Book.all).to be truthy
    end
end
