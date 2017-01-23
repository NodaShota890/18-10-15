class Book
  attr_accessor :id, :title, :author_id, :price

  def initialize(params = {})
    @id        = params[:id]
    @title     = params[:title]
    @author_id = params[:author_id]
    @price     = params[:price]
  end

  def author
    Author::LIST.find { |author| author.id == author_id }
  end

  LIST = [
    new(id: 1, title: 'Ruby Under a Microscope',       author_id: 1, price: 2800),
    new(id: 2, title: 'The Ruby Programming Language', author_id: 2, price: 4100),
    new(id: 3, title: 'Ruby Pocket Reference',         author_id: 2, price: 2400),
    new(id: 4, title: 'Effective Ruby',                author_id: 3, price: 3460),
    new(id: 5, title: 'Head First Ruby',               author_id: 2, price: 3460),
  ]
end
