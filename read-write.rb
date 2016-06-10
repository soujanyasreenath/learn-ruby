puts "Reading from read.txt file .. "
text_read = File.read('read.txt')

puts text_read

text_read.split(" ").each do |x|
  text_write = x.capitalize + "\n"
  puts text_write
  File.open("read.txt", "a+") { |f| f.write(text_write) }
end



