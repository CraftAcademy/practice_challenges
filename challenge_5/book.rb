class Book

  attr_accessor :author, :title, :publisher, :year

 def initialize(attrs)
   self.author = attrs[:author]
   self.title = attrs[:title]
   self.publisher = attrs[:publisher]
   self.year = attrs[:year]
 end

 def citate(page)
   "#{self.author}, #{self.title}, #{self.publisher}, #{self.year}, #{page}"
 end

end
