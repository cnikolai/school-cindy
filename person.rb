require 'csv'

class Person
  attr_accessor :last_name, :sex, :age, :role, :password

  def initialize(attributes_hash)
    @last_name = attributes_hash[:last_name]
    @sex = attributes_hash[:sex]
    @age = attributes_hash[:age]
    @role = attributes_hash[:role]
    @password = attributes_hash[:password]
  end
end
