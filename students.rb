require_relative 'person'

class Student < Person
  attr_reader :student_id
  def initialize(attributes_hash)
    super
    @student_id = attributes_hash[:student_id]
  end
end
