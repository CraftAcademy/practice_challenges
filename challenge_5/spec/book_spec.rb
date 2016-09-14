require './challenge_5/lib/book.rb'

describe Book do
  it 'has 50 pages' do
    expect (subject.pages).to eq 50
  end
end
