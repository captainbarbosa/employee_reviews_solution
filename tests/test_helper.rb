require "rubygems"
require "bundler/setup"
require "active_record"
require "minitest/autorun"
require "./employee"
require "./department"

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'test.sqlite3'
)
