def event(name)
  puts "ALEART: #{name}" if yield
end
Dir.glob('*events.rb').each {|file| load file}
