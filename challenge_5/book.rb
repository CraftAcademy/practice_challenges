class Book

  attr_accessor :author, :title, :publisher, :year

 def initialize(attrs)
   self.author = attrs[:author]
   self.title = attrs[:title]
   self.publisher = attrs[:publisher]
   self.year = attrs[:year]
 end

 def citate(page)
   if page < 999
     "#{self.author}, #{self.title}, #{self.publisher}, #{self.year}, #{page}"
   else
     raise "Get Bent"
   end
 end

end
