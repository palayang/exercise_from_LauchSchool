a = [1,2,3]

def each_with_index(test)
	index = 0
	test.each do |array|
		puts "index = #{index+1}"
		puts "value = #{test[index]}"
		index += 1
	end
end

each_with_index(a)
