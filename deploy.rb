puts 'Enter comment'
comment = gets

system "git add ."
system "git commit -m '#{comment}'"
system "git push origin master"

