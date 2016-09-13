country = ['Sweden', 'South Africa', 'Poland']
city = ['Stockholm', 'Pretoria', 'Warsaw']
  country.each do |country|
  city.each do |city|
    puts "#{city} is the capital of #{country}"
  end
end
