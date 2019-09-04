class Person
  attr_accessor :name

  def initialize(attrs = {})
    @name = set_name(attrs[:name])

  end

  private
  def set_name(obj)
    @name = obj
  end
end