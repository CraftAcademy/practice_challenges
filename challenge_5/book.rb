require 'pry'
class Book

  attr_accessor :author, :title, :publisher, :year, :total_pages, :citation

 def initialize(attrs)
   self.author = attrs[:author]
   self.title = attrs[:title]
   self.publisher = attrs[:publisher]
   self.year = attrs[:year]
   self.total_pages = attrs[:total_pages]
 end

 def citate(attrs)
   if attrs.nil? || (attrs == {}) || (attrs == "")
     attrs = {page: "no page given"}
   end
  #  if # must now test if 'page' is a string but not "no page given" Or up top there could put 'if page is not an integer'
  if self.author.nil?
    raise "no author found"
  elsif self.title.nil?
    raise "no title found"
  elsif ((attrs[:page] == "no page given")) ||
    ((attrs[:page].kind_of? Integer) && (attrs[:page] <= self.total_pages))
    @citation = "#{self.author}, #{self.title}, "
      unless self.publisher.nil?
        @citation += "#{self.publisher}, "
      end
      unless self.year.nil?
        @citation +=  "#{self.year}, "
      end
    @citation += "#{attrs[:page]}."
    @citation
  else
    raise "Get Bent"
  end
 end

end
