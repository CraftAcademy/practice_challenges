require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    '“The capital of Sweden is Stockholm” <BR>
    “The capital of South Africa is Pretoria” <BR>
    “The capital of Poland is Warsaw”'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
