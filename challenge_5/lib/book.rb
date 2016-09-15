class Book
  attr_accessor :pages, :title, :author, :publishing_year, :publisher

  def initialize(pages, title, author, publishing_year, publisher)
    @pages = pages
    @title = title
    @author = author
    @publishing_year = publishing_year
    @publisher = publisher
  end
end
