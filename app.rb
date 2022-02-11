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

  post '/attack' do
    @game = $game
+   @game.attack(@game.opponent_of(@game.current_turn))
    erb(:attack)
  end

  get '/attack' do
    @game = $game
    # @game.attack(@game.player2)
    # game.attack(@game.opponent_of(@game.current_turn))
    erb(:attack)
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect '/play'
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end