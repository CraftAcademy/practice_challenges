In Spec:

describe Book do
  it 'has 50 pages' do
    expect (subject.pages).to eq 50
  end
end


In lib:

class Book
  attr_accessor :pages :title :author :publishing_year :publisher

    def initilize
      @pages = 50
      @title = 'Coding As A Craft'
      @author = 'Thomas Ochman'
      @publishing_year = '2016'
      @publisher = 'Pragmatic Sweden'

    end

    def self.printAuthor ()
      puts 'Thomas Ochman, Coding As A Craft, Pragmatic Sweden, 2016, 50'
   end
end
