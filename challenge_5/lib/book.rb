class Book
  attr_accessor :pages, :title, :author, :publishing_year, :publisher

  def initilize
    @pages = 50
    @title = 'Coding As A Craft'
    @author = 'Thomas Ochman'
    @publishing_year = 2016
    @publisher = 'Pragmatic Sweden'
  end
end
