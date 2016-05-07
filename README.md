# Employee Reviews

Keep track of a department's staff, and the details of each employee within a department using ActiveRecord.
To test out functionality, download the repository and run `rake db:migrate` followed by `application.rb` to interact through [pry](https://github.com/pry/pry). Created as an assignment while at The Iron Yard.

## Things you can do

* Create new departments, each with their own empty "staff" array:
```
marketing = Department.new("Marketing")
```
* Create new employees:
```
new_employee = Employee.new(name, phone, email, salary )
```
* Add employees to a department:
```
marketing.add_employee(employee)
```
* Add text reviews to each employee using:
```
new_employee.add_employee_review(review)
```
* Give raises to an entire department, but only to eligible employess with satisfactory standing.
```
marketing.give_raise(5000)
```
