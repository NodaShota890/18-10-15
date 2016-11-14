# coding: utf-8
require 'bundler'
Bundler.require

require_relative 'models/init'

BOOKS = [
  Book.new(id: 1, title: 'たのしいRuby',            author_id: 1, price: 2800),
  Book.new(id: 2, title: 'プログラミング言語 Ruby', author_id: 2, price: 4100),
  Book.new(id: 3, title: '初めてのRuby',            author_id: 2, price: 2400),
  Book.new(id: 4, title: 'Effective Ruby',          author_id: 3, price: 3460),
  Book.new(id: 5, title: 'パーフェクトRuby',        author_id: 2, price: 3460),
]

AUTHORS = [
  Author.new(id: 1, name: '高橋征義'),
  Author.new(id: 2, name: 'まつもとゆきひろ'),
  Author.new(id: 3, name: 'Peter J.Jones'),
]

get '/' do
  @books = BOOKS
  slim :index
end

get '/books/:id' do
  @book = BOOKS.find { |book| book.id.to_s == params[:id] }
  slim :show
end
