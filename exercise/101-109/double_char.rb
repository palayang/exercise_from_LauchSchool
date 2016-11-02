def repeater(input_s)
    output_s = ""
    input_s.each_char do |char|
        output_s << char*2
    end
    output_s
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
puts repeater('123') == '112233'