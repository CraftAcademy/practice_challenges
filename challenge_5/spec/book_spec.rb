require './challenge_5/lib/book.rb'

describe Book do
  it 'has 50 pages' do
    expect (subject.pages).to eq 50
  end

  it 'has an author' do
    expect (subject.author.to eq 'Thomas Ochman'
  end

  it 'has a publisher' do
    expect (subject.publisher.to eq 'Pragmatic Sweden'
  end

  it 'has a publising_year' do
    expect (subject.publishing_year.to eq '2016'
  end

  it 'has a title' do
    expect (subject.publishing_year.to eq 'Coding As A Craft'
  end
end
