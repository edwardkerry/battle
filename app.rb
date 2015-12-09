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

  get '/hug' do #/attack
    @game = $game
    @game.hug(@game.not_whos_go)
    erb(:hug)
  end

  post '/switch_turns' do
    @game = $game
    @game.switch_turns
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
