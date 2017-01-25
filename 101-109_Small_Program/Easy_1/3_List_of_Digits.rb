SMALLER_FACTOR = 10

def digit_list(input_i)
  result = []
  loop do
    q_and_r = input_i.divmod(SMALLER_FACTOR)
    result.unshift(q_and_r[1])
    input_i = q_and_r[0]
    break if q_and_r[0] == 0
  end
  result
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)