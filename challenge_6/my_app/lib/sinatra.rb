require 'sinatra/base'

class Country < Sinatra::Base
  get '/' do

    sweden = {country: 'Sweden', capital: 'Stockholm'}
    poland = {country: 'Poland', capital: 'Warsaw'}
    south_africa = {country: 'South Africa', capital: 'Pretoria'}
    @countries = [sweden, poland, south_africa]

    erb :index
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
