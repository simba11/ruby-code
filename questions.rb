class Questions
	#count most common character character 
	def countChars(str)
		if str.length == 1 || str.length == 0
			puts 'string is too short'
		else
			str.strip.downcase!
			vals = Hash.new
			str.each_char do |i|
				vals[i] += 1
			end
			sorted = vals.sort_by { |k,v| v}.reverse
			puts 'most common char is ' + sorted.keys[0] + ' with occurance count: ' + sorted.values[0]
		end
	end
	#fibonacci
	def fib(num)
		#base case
		return num if num <= 1
		return fib(num-1) + fib(num-2)
	end
	#factorial
	def factorial(n)
		return 1 if n == 0
		return n*factorial(n-1)
	end
	#reverse string		#TODO - Recursively
	def rev(str)
		#str.reverse!  		# <-- too easy
		x = str.length
		while x >= 0
			x--
			string << str[x]
		end
		return string
	end
	#determine if string has all unique characters
	def unique(str)
		#need to remove spaces?
		str.strip.downcase.sort!
		if str.length == str.squeeze.length
			true
		else
			false
		end
	end	
	#determine if string is permutation of other
	def perm(s1, s2)
		s1.sort!
		s2.sort!
		if s1 == s2
			true
		else
			false
		end
	end	
	#given string, replace all spaces with %20
	def replace_space(str)
		str.gsub!(/\s/, '%20')
	end
	#
end

