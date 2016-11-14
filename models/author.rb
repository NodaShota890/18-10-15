# coding: utf-8
class Author
  attr_accessor :id, :name

  def initialize(params = {})
    @id   = params[:id]
    @name = params[:name]
  end

  LIST = [
    new(id: 1, name: '高橋征義'),
    new(id: 2, name: 'まつもとゆきひろ'),
    new(id: 3, name: 'Peter J.Jones'),
  ]
end
