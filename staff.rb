require_relative 'person'

class Staff < Person
  attr_reader :employee_id
  def initialize(attributes_hash)
    super
    @employee_id = attributes_hash[:employee_id]
  end
end
