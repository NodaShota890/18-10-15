class Author
  attr_accessor :id, :name

  def initialize(params = {})
    @id   = params[:id]
    @name = params[:name]
  end

  LIST = [
    new(id: 1, name: 'Pat Shaughnessy'),
    new(id: 2, name: 'Yukihiro Matsumoto'),
    new(id: 3, name: 'Peter J.Jones'),
  ]
end
