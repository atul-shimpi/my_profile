puts 'Enter comment'
comment = gets

system "git add ."
system "git commit -m '#{comment}'"

