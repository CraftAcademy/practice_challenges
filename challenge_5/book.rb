
class Book
  attr_accessor :pages, :title, :author, :publishing_year, :publisher
  
 def initialize ()
   @author = "Thomas Ochman"
   @title = "Craft Academy"
   @publisher = "Pragmatic Sweden"
   @publishing_year = 2016
 end
 
  def refer_to(page)
    "#{@author}, #{@title}, #{@publisher}, #{@publishing_year}, #{page}"
  end

  
end
