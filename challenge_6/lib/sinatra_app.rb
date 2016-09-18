require 'sinatra/base'

class TestApp < Sinatra::Base
  get '/' do
    sweden = { country: 'Sweden', capital: 'Stockholm'}
  end
end
