#!/usr/bin/env ruby

require 'csv'
require 'yaml'
require 'logger'
require_relative 'const'
require_relative 'employee'

# ログ出力準備
Dir.mkdir(Const::LOG_DIR) unless File.exists?(Const::LOG_DIR)
log = Logger.new(File.join(Const::LOG_DIR, Const::LOG_FILE))

puts "start..."
log.debug('テスト開始')

# mapping情報取得
mapping = YAML.load(File.read(Const::MAPPING_FILE))

mapping.each do |mapping_info|
  puts "name:" + mapping_info["file"]
  Employee.new(mapping_info).readCsv
end

log.debug('テスト終了')
