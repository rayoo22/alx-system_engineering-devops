#!/usr/bin/env ruby
# the regex must only be matching: Capital letters
puts ARGV[0].scan(/[A-Z]/).join
