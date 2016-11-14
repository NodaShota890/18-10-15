# coding: utf-8
require 'bundler'
Bundler.require

require_relative 'models/init'

get '/' do
  @books = Book::LIST
  erb :index
end

get '/books/:id' do
  @book = Book::LIST.find { |book| book.id.to_s == params[:id] }
  erb :show
end
