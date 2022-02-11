require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    player1 = Player.new(params[:Player1])
    player2 = Player.new(params[:Player2])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

<<<<<<< HEAD
  post '/attack' do
    @game = $game
+   @game.attack(@game.player2)
=======
  get '/attack' do
    @player1 = $Player1.name
    @player2 = $Player2.name
    Game.new.attack($Player2)
>>>>>>> c06f0fb605b5e6bf7f2711107de3bd824c682b88
    erb(:attack)
  end


  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end