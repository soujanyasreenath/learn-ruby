puts "Enter the string ... "
str = gets.chomp

pal_str = str.reverse

if str == pal_str
  puts "Palindrome of #{str} is #{pal_str}"
else
  puts "Entered string is not a palindrome"
end