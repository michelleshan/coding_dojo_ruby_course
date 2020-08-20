#1 Print 1-255
# Write a program that would print all the numbers from 1 to 255.

# (1..255).each { |i| print i, " "}

# **********************************************************************************

#2 Print odd numbers between 1-255
# Write a program that would print all the odd numbers from 1 to 255.

# print (1..255).select { |i| i%2 != 0 }

# **********************************************************************************

#3 Print Sum
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
# Do NOT use an array to do this exercise.

# sum = 0
# for num in 0.upto(255)
#     sum += num
#     puts "New number: #{num}, Sum: #{sum}"
# end

# **********************************************************************************

#4 Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen. Being able to loop through each member of the array is extremely important.

# X = [1,3,5,7,9,13]
# X.each {|i| print i, " "}


# **********************************************************************************

#5 Find Max
# Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.

# def findMax(arr)
#     puts arr.max
# end
# findMax([-3, -5, -7])

# **********************************************************************************

#6 Get Average
# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a length function with this assignment.

# def avg(arr)
#     sum = 0
#     avg = 0
#     arr.each {|i| sum+= i}
#     avg = sum/arr.length
#     puts avg
# end
# avg([2,10,3 ,1])

# **********************************************************************************

#7 Array with Odd Numbers
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].

# y = []
# y << (1..255).select {|i| i%2 != 0}
# puts y

# y = []
# 1.upto(255).each { |i| y << i if i.odd? } 
# puts y

# **********************************************************************************

#8 Greater Than Y
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).

# def greaterThanY(arr,y)
#     newArr = []
#     arr.select {|i| newArr << i if i > y }
#     puts newArr.length
# end
# greaterThanY([1, 3, 5, 7],3)

# **********************************************************************************

#9 Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself. When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].

# def square(arr)
#     newArr = []
#     arr.select {|i| newArr << i = i*i }
#     puts newArr
# end
# square([1, 5, 10, -2])

# def squareValues(arr)
#     arr.map! {|i| i = i*i }
#     print arr
# end
# squareValues([1,5,10,-2])

# **********************************************************************************

#10 Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0. When the program is done, x should have no negative values, say [1, 5, 10, 0].

# def eliminateNeg(arr)
#     newArr = []
#     arr.select {|i| newArr << i if i>0 }
#     puts newArr
# end
# eliminateNeg([1, 5, 10, -2])

# **********************************************************************************

#11 Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array, the minimum value in the array, and the average of the values in the array.

# def minMaxAvg(arr)
#     sum = 0
#     avg = 0
#     arr.each {|i| sum += i}
#     avg = sum/arr.length
#     puts "The max is #{arr.max}, the min is #{arr.min}, and the average is #{avg}"
# end
# minMaxAvg([1, 5, 10, -2])

# def maxMinAvg(arr)
#     sum = 0
#     arr.each {|i| sum += i}
#     x = Hash.new
#     x["max"] = arr.max
#     x["min"] = arr.min
#     x["avg"] = sum/arr.length
#     print x
# end
# maxMinAvg([1, 5, 10, -2])

# **********************************************************************************

#12 Shifting the Values in the Array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

# def shift(arr)
#     arr.shift
#     arr.push(0)
#     puts arr
# end
# shift([1, 5, 10, 7, -2]) 

# **********************************************************************************

#13 Number to String
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].

def numToStr(arr)
    arr.map! {|i| i<0? "Dojo":i }
    puts arr
end
numToStr([-1, -3, 2])