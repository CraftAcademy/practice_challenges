class Book
  attr_accessor :author, :title, :publisher, :publishing_year, :pages

  def initialize(attrs)
    self.author = attrs[:author]
    self.title = attrs[:title]
    self.publisher = attrs[:publisher]
    self.publishing_year = attrs[:publishing_year]
    self.pages = attrs[:pages]
  end
end
