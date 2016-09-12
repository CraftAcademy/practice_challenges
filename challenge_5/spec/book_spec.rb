require './lib/book'

describe Book do

  before(:each) do
    @book = Book.new(author: "Viktoria", title: "Coding As A Craft", publisher: "Pragmatic Sweden", publishing_year: 2016, pages: 50)
  end

    it 'should have an author' do
      expect(@book.author).to eq "Viktoria"
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
      expect(@book.source_citation(45)).to eq "Viktoria, Coding As A Craft, Pragmatic Sweden, 2016, 45"
    end

    it 'should reject source citation of the book if page doesn\'t exist' do
      expect(@book.source_citation(51)).to eq "impossible"
    end
end
