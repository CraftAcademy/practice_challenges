require 'sinatra/base'

class TestApp < Sinatra::Base
  get '/' do

    sweden = { country: 'Sweden', capital: 'Stockholm'}
    sa = { country: 'South Africa', capital: 'Pretoria'}
    poland = { country: 'Poland', capital: 'Warsaw'}

    @countries = [sweden, sa, poland]
  end
end
