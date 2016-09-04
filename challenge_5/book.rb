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
    @page = attrs[:page]
    handle_no_page_number
    handle_whacky_page_input
    raise 'no author found' if author.nil?
    raise 'no title found' if title.nil?
    if page_checks_out?
      create_citation
    else
      raise 'Get Bent'
    end
  end

  def create_citation
    @citation = "#{author}, #{title}, "
    @citation += "#{publisher}, " unless publisher.nil?
    @citation += "#{year}, " unless year.nil?
    @citation += "#{@page}."
    @citation
  end

  def handle_no_page_number
    @page = 'no page given' if @page.nil? || (@page == {}) || (@page == '')
  end

  def handle_whacky_page_input
    if (@page.is_a? String) && (@page != 'no page given')
      raise 'please enter a page number'
    end
  end

  def page_checks_out?
    (
    (@page == 'no page given')) ||
      (
      (@page.is_a? Integer) &&
      (@page <= total_pages)
      )
  end
end
