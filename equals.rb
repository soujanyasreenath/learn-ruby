puts "Enter the first string ..."
str1 = gets.chomp

puts "Enter the second string ..."
str2 = gets.chomp

if str1 == str2
  true
  puts "#{str1} is equal to #{str2}"
else
  false
  puts "#{str1} is not equal to #{str2}"
end
