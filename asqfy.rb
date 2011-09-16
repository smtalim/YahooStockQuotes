# asqfy.rb
require 'open-uri'
require 'csv'

unless ARGV.length == 1
  puts "Usage: ruby asqfy.rb INTC"  
  exit  
end

url = "http://download.finance.yahoo.com/d/quotes.csv?s=#{ARGV[0]}&f=snl1d1t1c1ohgv&e=.csv"
csv = CSV.parse(open(url).read)
result = Array.new
#parse csv data
csv.each do |row|
  result += row
end

puts "Information current as of " + result[4] + " on " + result[3]
puts result[0] +"'s (" + result[1] + ") last trade was - $" + result[2] + " (increase of " + result[5] + ")"
puts
puts "Opened at $" + result[6]
puts "Range for the day $" + result[8] + " - $" + result[7]