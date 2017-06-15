require_relative 'staff'
require_relative 'students'
require_relative 'principal'
require 'csv'

class School
  attr_reader :name_of_school, :location, :phone_number
  attr_accessor :degrees_offered, :students, :staff

  def initialize(name_of_school, location, phone_number, degrees_offered = [])
    @name_of_school = name_of_school
    @location = location
    @phone_number = phone_number
    @degrees_offered = degrees_offered
  end

  def import_new_staff
    @staff = []
    list_of_staff = CSV.read('staff.csv')
    list_of_staff.shift
    list_of_staff.each do |sub_array|
      @staff.push(Staff.new(last_name: sub_array[0], sex: sub_array[1], age: sub_array[2], role: sub_array[3], employee_id: sub_array[4], password: sub_array[5]))
    end
  end

  def import_new_students
    @students = []
    list_of_students = CSV.read('students.csv')
    list_of_students.shift
    list_of_students.each do |sub_array|
      @students.push(Student.new(last_name: sub_array[0], sex: sub_array[1], age: sub_array[2], role: sub_array[3], student_id: sub_array[4], password: sub_array[5]))
    end
  end

  def add_new_staff
    @staff.push(Principal.new(last_name: 'Smith', sex: 'F', age: '32', student_id: '25838', password: 'yyzz'))
  end
end

code_platoon = School.new('Code Platoon', 'Chicago', '
  123-1233-3335', [])
code_platoon.import_new_students
code_platoon.import_new_staff
code_platoon.add_new_staff
p code_platoon.staff
