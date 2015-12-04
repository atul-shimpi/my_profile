#!/usr/bin/env ruby
puts 'Enter comment'
comment = gets

system "git add ."
system "git commit -m '#{comment}'"
system 'git push origin master'
system 'git push heroku master'
