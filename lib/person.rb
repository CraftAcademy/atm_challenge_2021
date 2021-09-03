class Person

 STARTING_CASH = 0
 attr_accessor :name, :cash

 def initialize(attrs = {})
    set_name(attrs[:name])
    @cash = Person::STARTING_CASH
 end

 


 private

 def set_name(obj)
   obj.nil? ? missing_name : @name = obj
 end

 def missing_name
   raise 'A name is required'
 end

end