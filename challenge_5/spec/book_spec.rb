require './book'

describe Book do

  before do
    @book = Book.new(author: "Amber", title: "Testing environments and passing params and inputs", publisher: "Amber Bo Bamber", year: "1984", total_pages: 1000)
  end

  it 'should have an author' do
    expect(@book.author).to eq "Amber"
  end

  it 'should have a year' do
    expect(@book.year).to eq "1984"
  end

  it 'should provide a citation of the right page' do
    expect(@book.citate(page: 50)).to eq "Amber, Testing environments and passing params and inputs, Amber Bo Bamber, 1984, 50."
  end

  it 'should tell you to "get bent" if you try to cite a page larger than the book' do
    expect{@book.citate(page: 1001)}.to raise_error "Get Bent"
  end

  it 'should default to "no page given" if no page cited' do
    expect(@book.citate(page: "")).to eq "Amber, Testing environments and passing params and inputs, Amber Bo Bamber, 1984, no page given."
  end

  it 'should raise "please enter a page number" if asked to cite something other than a number' do
    expect {@book.citate(page: "monkeys")}.to raise_error "please enter a page number"
  end

end

describe "Book no author" do

  before do
    @book = Book.new(title: "Testing environments and passing params and inputs", year: "1984", total_pages: 1000)

  end


  it 'should raise "no author found" if you try to cite a book with no author' do
    expect{@book.citate(page: 50)}.to raise_error "no author found"
  end

end

describe "Book no title" do

  before do
    @book = Book.new(author: "Amber", year: "1984", total_pages: 1000)

  end


  it 'should raise "no title found" if you try to cite a book with no title' do
    expect{@book.citate(page: 50)}.to raise_error "no title found"
  end

end

describe "Book no publisher" do

  before do
    @book = Book.new(author: "Amber", title: "Testing environments and passing params and inputs", year: "1984", total_pages: 1000)
  end

  it 'should allow you to cite a book with no publisher' do
    expect(@book.citate(page: 50)).to eq "Amber, Testing environments and passing params and inputs, 1984, 50."
  end

end

describe "Book no year" do

  before do
    @book = Book.new(author: "Amber", title: "Testing environments and passing params and inputs", total_pages: 1000)
  end

  it 'should allow you to cite a book with no publisher' do
    expect(@book.citate(page: 50)).to eq "Amber, Testing environments and passing params and inputs, 50."
  end

end
