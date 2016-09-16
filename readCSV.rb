#!/usr/bin/env ruby

require 'csv'

csv_data = CSV.read('data.csv', headers: true)
puts "start..."

csv_data.each do |data|
    intro_msg = "PERNR:#{data["PERNR"]} SUBTY:#{data["SUBTY"]} ENDDA:#{data["ENDDA"]}です。\n"
    puts intro_msg
end
