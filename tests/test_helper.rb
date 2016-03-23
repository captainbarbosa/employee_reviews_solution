require "rubygems"
require "bundler/setup"
require "active_record"
require "minitest/autorun"
require "./employee"
require "./department"

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'tests/test.sqlite3'
)

require "./employees_and_departments_migration"
# Put after
