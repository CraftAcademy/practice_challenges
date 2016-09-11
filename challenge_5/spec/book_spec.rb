require './lib/book'

describe Book do

  before(:each) do
    @book = Book.new(author: "Thomas Ochman", title: "Coding As A Craft", publisher: "Pragmatic Sweden", publishing_year: 2016, pages: 50)
  end

    it 'should have an author' do
      expect(@book.author).to eq "Thomas Ochman"
    end

    it 'should have a title' do
      expect(@book.title).to eq "Coding As A Craft"
    end

    it 'should have a publisher' do
      expect(@book.publisher).to eq "Pragmatic Sweden"
    end

    it 'should have a publishing year' do
      expect(@book.publishing_year).to eq 2016
    end

    it 'should have a certain amount of pages' do
      expect(@book.pages).to eq 50
    end

    it 'should return a source citation of the book' do
      expect(@book.all).to be truthy
    end
end
