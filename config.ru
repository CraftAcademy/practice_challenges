require 'rubygems'
require File.join(File.dirname(__FILE__), 'challenge_6/lib/views/feature.rb')

run MyApp

use Rack::Static, urls: ['/css', '/js', '/images', '/fonts'], root: 'assets'
