# coding: utf-8
class Book
  attr_accessor :id, :title, :author_id, :price

  def initialize(params = {})
    @id        = params[:id]
    @title     = params[:title]
    @author_id = params[:author_id]
    @price     = params[:price]
  end

  def author
    AUTHORS.find { |author| author.id == author_id }
  end
end
