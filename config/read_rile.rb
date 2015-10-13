require_relative './confif/environment'

a, i = Dir.entries("./FPSLogs").count, 0
ARGV.each do |file|
  ActiveRecord::Base.transaction do
  Dir.foreach("./#{file}") do |item|
    i +=1
    begin
      data = File.read()