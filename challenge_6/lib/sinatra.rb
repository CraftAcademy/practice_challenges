require 'sinatra/base'

class TestApp < Sinatra::Base
  get '/' do
    sweden = {country: 'Sweden', capital: 'Stockholm'}
    poland = {country: 'Poland', capital: 'Warsaw'}
    sa = {country: 'South Africa', capital: 'Pretoria'}
    @countries = [sweden, poland, sa]
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
