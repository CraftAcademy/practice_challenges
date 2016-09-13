require './server'

run Sinatra::Application


use Rack::Static, urls: ['/css', '/js', '/images', '/fonts'], root: 'assets'
