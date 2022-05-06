require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # routes will go here
  get '/' do
    erb :index
  end

  post '/names' do
    @p1_name = params[:p1_name]
    @p2_name = params[:p2_name]
    erb :play
  end

  # start the server
  run! if app_file == $0

end
