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

def dup_array_approach_1
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

def dup_array_approach_2
  duplicate_array = ["tap", "stop", "mat", "stop", "melt", "malt", "stop", "tap", "pit", "mat", "pit", "melt"]

  puts "Finding duplicate in #{duplicate_array}"

  duplicate_array_sorted = duplicate_array.group_by do |duplicate|
    duplicate.chars.sort
  end.values
  puts "Dulicates : #{duplicate_array_sorted}"
end

def ana_array
  anagram_array = ["tap", "stop", "mat", "tops", "pots", "pat", "pit", "tam", "tip", "melt"]
  print "initial array : #{anagram_array} \n"

  anagram_sorted = anagram_array.group_by do |word|
    word.chars.sort
  end.values

  puts "Sorted array : #{anagram_sorted}"
end
  
# anagram_input
# dup_array_approach_1
dup_array_approach_2
# ana_array