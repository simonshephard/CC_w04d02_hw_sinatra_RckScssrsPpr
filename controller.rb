require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/game')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/computer' do
  erb(:computer)
end

get '/random/:player1' do
  weapons = ["rock", "paper", "scissors"]
  comp_weapon = weapons[rand(3)]
  game = Game.new(params[:player1], comp_weapon)
  @game_result = game.compare
  erb(:result)
end

get '/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @game_result = game.compare
  erb(:result)
end
