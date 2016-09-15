class Book
  attr_accessor :pages, :title, :author, :publishing_year, :publisher

  def initialize(pages, title, author, publishing_year, publisher)
    @pages = pages
    @title = title
    @author = author
    @publishing_year = publishing_year
    @publisher = publisher
  end

  def citation
    book_2 = {author: 'Thomas Ochman', title: 'Coding As A Craft', publisher: 'Pragmatic Sweden', publishing_year: 2016, pages: 50}
    puts "#{book_2[:author]}, #{book_2[:title]}, #{book_2[:publisher]}, #{book_2[:publishing_year]}, #{book_2[:pages]}"
  end
end
