#1 Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

# def one(arr)
#     sum = 0
#     arr.each {|i| sum+= i}
#     newArr = arr.find_all {|i| i > 10}
#     puts sum
#     puts newArr
# end
# one([3,5,1,2,7,9,8,13,25,32])

# *********************************************************************

#2 Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

# def two(arr)
#     puts arr.shuffle
#     newArr = []
#     newArr << arr.find_all {|i| i if i.length >5 }
#     puts newArr
# end
# two(["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"])

# *********************************************************************

#3 Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.

# def three()
#     arr = []
#     ("A".."Z").each {|i| arr.push(i)}
#     arr = arr.shuffle
#     puts "The last letter is #{arr.values_at(arr.length-1)}"
#     if ["A","E","I","O","U"].include? arr.values_at(0) 
#         puts "The first letter is a vowel, #{arr.values_at(0)}"
#     else
#         puts "The first letter is #{arr.values_at(0)}"
#     end
# end
# three()


# *********************************************************************

#4 Generate an array with 10 random numbers between 55-100.

# def four()
#     arr = []
#     10.times {arr.push(rand(55..100))}
#     puts arr
# end
# four()

# *********************************************************************

#5 Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value

# def five()
#     arr = []
#     10.times {arr.push(rand(55..100))}
#     puts arr.sort
#     puts "The min is #{arr.min} and the max is #{arr.max}"
# end
# five()

# *********************************************************************

#6 Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)

# def six()
#     str = ""
#     5.times {str << 65+rand(26)}
#     puts str
# end
# six()

# *********************************************************************

#7 Generate an array with 10 random strings that are each 5 characters long

# def seven()
#     arr = []
#     10.times{ |i| arr.push((1..5).collect{ |i| i = (65+rand(26)).chr }.join)}
#     puts arr
# end
# seven()
