require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/names' do
    p params
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/hug_player_2' do #/attack
    @game = $game
    @game.hug(@game.player2)
    erb(:hug_player_2)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
