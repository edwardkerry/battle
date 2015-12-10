require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/comp_player'
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
    player1 = Player.new(params[:player1])
    if params[:player2] == ''
      player2 = CompPlayer.new('Meccahugger')
    else
      player2 = Player.new(params[:player2])
    end
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  post '/hug' do
    @game = $game
    @game.hug(@game.the_other_player)
    if @game.game_over?
      redirect '/lose'
    else
      redirect '/hug'
    end
  end

  get '/hug' do
    @game = $game
    erb(:hug)
  end

  get '/lose' do
    @game = $game
    erb(:lose)
  end

  post '/switch_turns' do
    @game = $game
    @game.switch_turns
    if @game.whos_go.computer
      @game.hug(@game.the_other_player)
      redirect '/lose' if @game.game_over?
      redirect '/hug'
    else
      redirect '/play'
    end
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
