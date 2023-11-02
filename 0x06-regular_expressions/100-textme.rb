#!/usr/bin/env ruby
# file: 100-textme.rb
# Auth: kelechi nnadi <alx swe>
puts ARGV[0].scan(/\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(',')
