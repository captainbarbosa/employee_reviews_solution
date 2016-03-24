require './employee'
require "active_record"

class Department < ActiveRecord::Base
  has_many(:employees)

  def staff
    # Simplifation of 'Employee.where(department_id: self.id)'
    # After adding 'has_many(:employees)'
    self.employees
  end

  def add_employee(new_employee)
    # @staff << new_employee

    # Set employee's department ID record as being the
    # matching department ID
    # new_employee.department_id = self.id
    self.employees << new_employee
    # Sets the department ID of new employee AND saves it
  end

  def department_salary
    self.staff.reduce(0.0) {|sum, e| sum + e.salary}
  end

  def add_employee_review(review)
    @review = review
  end

  def department_raise(alloted_amount)
    raise_eligible = staff.select {|e| yield(e)}
    amount = alloted_amount / raise_eligible.length
    raise_eligible.each {|e| e.raise_by_amount(amount)}
  end
end
