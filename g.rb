
require 'csv'

fn = 'test.txt'
CSV.foreach(fn, :row_sep => "\r\n", :col_sep => '|') do |r|
  r.length
end


