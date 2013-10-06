require 'bundler/setup'
require 'sinatra'

get '/hello' do
  @visitor = params[:name]   
  erb :index, :layout => 'my_special_layout'
end 

get '/' do
    @name = %w(Amigo Oscar Viking).sample
    erb :index
end

get '/berry' do
  erb :berry
end
