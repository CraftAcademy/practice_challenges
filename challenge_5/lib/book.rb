class Book
  attr_accessor :author, :title, :publisher, :publishing_year, :pages

  def initialize(attrs)
    self.author = attrs[:author]
    self.title = attrs[:title]
    self.publisher = attrs[:publisher]
    self.publishing_year = attrs[:publishing_year]
    self.pages = attrs[:pages]
  end

  def source_citation(page)
    if page_within_range?(page)
      return_citation(page)
    else
     return_error_message
    end
  end

  private
  def page_within_range?(page)
    page <= self.pages
  end

  def return_citation(page)
    "#{self.author}, #{self.title}, #{self.publisher}, #{publishing_year}, #{page}"
  end

  def return_error_message
    "impossible"
  end
end
