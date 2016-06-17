def anagram_input
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

  anagram_array = ["tap", "spot", "mat", "pots", "tops", "pat", "pit", "tam", "tip", "melt"]

  anagram_array.each do |p|
    # p_split = p.split("")
    p_sort = anagram_array.sort
    puts p_sort

  end
end

def dup_array
  duplicate_array = ["tap", "stop", "mat", "stop", "melt", "malt", "stop", "tap", "pit", "mat", "pit", "melt"]
  sorted_duplicate_array = duplicate_array.sort
  puts "finding duplicate in #{duplicate_array}"
  i = 0
  max = sorted_duplicate_array.length 

  duplicate_array.each do |p|
    for i in i..max
      if sorted_duplicate_array[i] == sorted_duplicate_array[i-1]
        puts "duplicate #{sorted_duplicate_array[i]} = #{sorted_duplicate_array[i-1]}"
      end   
    end
  end
end

def ana_array
  anagram_array = ["tap", "stop", "mat", "tops", "pots", "pat", "pit", "tam", "tip", "melt"]
  i = 0
  max = anagram_array.length 
  anagram_array.each do |p|
    p_join = p.chars.sort.join
    print p_join
  end
end
  
# anagram_input
# dup_array
ana_array