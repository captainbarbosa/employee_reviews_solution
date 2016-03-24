require 'active_record'
require './db_connection'

class EmployeesAndDepartmentsMigration < ActiveRecord::Migration

  #TODO: Remove employee_id from dept table & put
  #      dept_id on employee table, then recreate both DBs

  def change
    create_table :employees do |t|
      t.integer :department_id
      t.string :name
      t.string :email
      t.string :phone
      t.integer :salary
      t.text :review
      t.boolean :satisfactory
    end

    create_table :departments do |t|
      t.string :name
      t.string :staff
      t.text :review
    end

  end
end

begin
  EmployeesAndDepartmentsMigration.migrate(:down)
rescue
end
EmployeesAndDepartmentsMigration.migrate(:up)
