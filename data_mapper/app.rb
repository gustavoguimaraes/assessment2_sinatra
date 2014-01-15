require 'bundler'
Bundler.require
#require_relative './lib/rabbit.rb'

Dir.glob('./lib/*rb') do |model|
  require model
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/spacecats.db")

get '/spacecats' do
  @spacecats = Spacecat.all
  haml :index
end

get '/spacecats/new' do
  @spacecat = Spacecat.new
  haml :new
end


post '/spacecats' do 
  @spacecat = Spacecat.new(params[:spacecat])
  if @spacecat.save
    status 201
    redirect '/spacecats/' + @spacecat.id.to_s
  else
    status 404
    haml :new
  end
end


get '/spacecats/edit/:id' do 
  @spacecat = Spacecat.get(params[:id])
  haml :edit
end


put '/spacecats/:id' do 
  @spacecat = spacecat.get(params[:id])
  if @spacecat.update(params[:spacecat])
    status 201
    redirect '/spacecats/' + params[:id]
  else
    status 400
    haml :edit
  end
end


get '/spacecats/delete/:id' do 
  @spacecat = Spacecat.get(params[:id])
  haml :delete
end


delete '/spacecats/:id' do 
  Spacecat.get(params[:id]).destroy
  redirect '/spacecats'
end


get '/spacecats/:id' do 
  @spacecat = Spacecat.get(params[:id])
  haml :show
end


DataMapper.auto_upgrade!