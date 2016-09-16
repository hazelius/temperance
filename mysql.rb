#!/usr/bin/env ruby

require 'bundler/setup'
require 'mysql2'

client = Mysql2::Client.new(
  :host => '',
  :username => '',
  :password => '',
  :database => '',
  :flags => Mysql2::Client::MULTI_STATEMENTS
)

query = %q{select id, family_name from employee_single_standards}
results = client.query(query)
results.each do |row|
  puts "--------------------"
  row.each do |key, value|
    puts "#{key} => #{value}"
  end
end
