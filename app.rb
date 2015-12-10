require 'sinatra/base'
require './lib/player'
require './lib/game'
class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    Player1 = Player.new(params[:name1])
    Player2 = Player.new(params[:name2])
    $game = Game.new(Player1, Player2)
    redirect '/play'
  end

  get '/play' do
      @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.switch
    @game.attack(@game.current)
    erb :attack
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
