require 'sinatra/base'

class App < Sinatra::Base
  set :public_folder, 'www/'
  enable :static

  get '/' do
    File.read(File.join('www', 'index.html'))
  end
end
