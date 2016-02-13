#!/usr/bin/env ruby
puts 'Enter comment'
comment = gets

system "bundle exec rake assets:precompile RAILS_ENV=production"
system "git add ."
system "git commit -m '#{comment}'"
system 'git push origin master'
system 'git push heroku master'
