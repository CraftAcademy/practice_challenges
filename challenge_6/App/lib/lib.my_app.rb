get '/' do
    erb :index
  end

country = ['Sweden']
city = ['Stockholm']
  country.each do |country|
  city.each do |city|
    puts "#{city} is the capital of #{country}"
  end
end

country = ['South Africa']
city = ['Pretoria']
  country.each do |country|
  city.each do |city|
    puts "#{city} is the capital of #{country}"
  end
end

country = ['Poland']
city = ['Warsaw']
  country.each do |country|
  city.each do |city|
    puts "#{city} is the capital of #{country}"
  end
end
