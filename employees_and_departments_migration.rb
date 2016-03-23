class EmployeesAndDepartmentsMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :salary
      t.text :review
      t.boolean :satisfactory
    end

    create_table :departments do |t|
      t.integer :employee_id
      t.string :name
      t.string :staff
      t.text :review
    end

  end
end

EmployeesAndDepartmentsMigration.migrate(:up)
