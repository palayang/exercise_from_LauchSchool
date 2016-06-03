a = ["atom","bob","cat",nil,"edward"]

a.each do |e|
	begin
	puts " name = #{e}, length = #{e.length}"
	rescue
	puts "something wrong"
	end
end

#inline_exception_example
a.each {|e| puts " name = #{e}, length = #{e.length}"} rescue puts "something wrong"