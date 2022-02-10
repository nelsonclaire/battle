require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $Player1 = Player.new(params[:Player1])
    $Player2 = Player.new(params[:Player2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $Player1.name
    @player2 = $Player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $Player1.name
    @player2 = $Player2.name
    erb(:attack)
  end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end