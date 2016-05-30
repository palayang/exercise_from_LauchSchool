def to_zero(n)
	if n>0
		puts n
		n -= 1
		to_zero(n)
	else
		puts n
	end
end


puts to_zero(6)