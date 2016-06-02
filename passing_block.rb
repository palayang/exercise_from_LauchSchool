def pass_block(&b)
	b.call
end

pass_block {puts "here"}