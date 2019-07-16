require 'sinatra'
require './lib/bookmark'

class BookMarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

end
