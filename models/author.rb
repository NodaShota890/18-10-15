# coding: utf-8
class Author
  attr_accessor :id, :name

  def initialize(params = {})
    @id   = params[:id]
    @name = params[:name]
  end
end
