
class Book
  attr_accessor :total_pages, :title, :author, :publishing_year, :publisher
  
    def initialize (attrs = {})
      self.total_pages = attrs[:total_pages]
      self.title = attrs[:title]
      self.author = attrs[:author]
      self.publishing_year = attrs[:publishing_year]
      self.publisher = attrs[:publisher]
    end
 
 
 
    def refer_to(page)
        if page < self.total_pages 
            "#{@author}, #{@title}, #{@publisher}, #{@publishing_year}, #{page}"
        else 
            "Pages not within range"
        end
    end
  
end
