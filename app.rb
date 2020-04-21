require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end

    post '/team' do
    @teamname = "Team Name: #{params[:name]}"
    @coach = "Coach: #{params[:coach]}"
    @pg = "Point Guard: #{params[:pg]}"
    @sg = "Shooting Guard: #{params[:sg]}"
    @sf = "Small Forward: #{params[:sf]}"
    @pf = "Power Forward: #{params[:pf]}"
    @c = "Center: #{params[:c]}"

    

    erb :team
    end


end
