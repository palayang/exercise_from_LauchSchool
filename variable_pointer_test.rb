a = [1,2,3,3]; puts "a = #{a}"
b = a; puts "b = #{b}"
c = a.uniq; puts "c = a.uniq, c = #{c}, a = #{a}"
d = a.uniq!; puts "d = a.uniq!, d = #{d}, a = #{a}"

a = [1,2,3,3]
puts "rest a = #{a}"
puts "b = #{b}"
puts "c = #{c}"
puts "d = #{d}"
puts "--------"
puts "test map method"
def test(b)
	b.map {|e| "I like the letter: #{e}"}
end

a = ["a", "a", "b"]; puts "a = #{a}"
b =test(a); puts "b = test(a)"

puts "a = #{a}"
puts "b = #{b}"