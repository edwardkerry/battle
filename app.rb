require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_HP = $player2.hug_points
    erb(:play)
  end

  post '/names' do
    p params
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/hug_player_2' do
    @player1 = $player1.name
    @player2 = $player2.name
    $player2.reduce_hug_points
    erb(:hug_player_2)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
