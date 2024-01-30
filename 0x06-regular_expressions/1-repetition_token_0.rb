#!/usr/bin/env ruby
# matching 1 or more occurrences of a token
puts ARGV[0].scan(/hbt{2,5}n/).join
