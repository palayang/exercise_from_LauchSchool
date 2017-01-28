vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles_input)

  result = {}
  # vehicle_sample = vehicles_input.uniq.map do |vehicle|
  #                    result[vehicle] = 0
  #                    vehicle
  #                  end

  # vehicle_sample.each do |sample|
  #   vehicles_input.each do |vehicle|
  #     result[sample] += 1 if vehicle == sample
  #   end
  # end
  # vehicles_input.uniq.each do |sample|
  #   result[sample] = vehicles_input.count(sample)
  # end

  vehicles_input.each do |vehicle|
    result[vehicle]? result[vehicle] += 1 : result[vehicle] = 1
  end

  result.each do |key, value|
    puts "#{key} => #{value}"
  end

end

count_occurrences(vehicles)