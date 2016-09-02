
class Book
  attr_accessor :pages, :title, :author, :publishing_year, :publisher

 def initialize (attrs = {})
   @pages = attrs[:pages]
   @title = attrs[:title]
   @author = attrs[:author]
   @publishing_year = attrs[:publishing_year]
   @publisher = attrs[:publisher]
 end

  def writeout(book)
    "#{book.author}, #{book.title}, #{book.publisher}, #{book.publishing_year}, #{book.pages}"
  end

end
