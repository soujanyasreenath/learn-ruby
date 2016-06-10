puts "Enter the first word ... "
str1 = gets.chomp.downcase

puts "Enter the second word ... "
str2 = gets.chomp.downcase

chars1 = str1.chars
chars2 = str2.chars

puts "#{chars1}, #{chars2}"

if str1.length == str2.length
  if chars1.sort == chars2.sort
    puts "#{chars1.sort}, #{chars2.sort} - The strings are anagram"
  else
    puts "The strings are not anagram"
  end
else
  puts "sorry, the length of the 2 strings does not match!"
end

