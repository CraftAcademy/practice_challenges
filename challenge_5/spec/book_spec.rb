require './book'

describe Book do

  before do
    @book = Book.new(author: "Amber", title: "Testing environments and passing params and inputs", publisher: "Amber Bo Bamber", year: "1984")
  end

  it 'should have an author' do
    expect(@book.author).to eq "Amber"
  end

  it 'should have a year' do
    expect(@book.year).to eq "1984"
  end

  it 'should provide a citation of the right page' do
    expect(@book.citate("50")).to eq "Amber, Testing environments and passing params and inputs, Amber Bo Bamber, 1984, 50"
  end

end
