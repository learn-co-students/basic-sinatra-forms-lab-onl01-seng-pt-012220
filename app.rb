require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name = "name"
    @coach = "coach"
    @point_guard = "pg"
    @shooting_guard = "sg"
    @small_forward = "sf"
    @power_forward = "pf"
    @center = "c"

    erb :team
  end



end
