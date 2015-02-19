def filter(array:, value:)
  number_of_values = 0
  array.each do |item|
    if value == item
      number_of_values += 1
    end
  end
  return Array.new(number_of_values) {value}
end

def exclude(array:, value:)
  new_list = array.dup
  new_list.each do |item|
    if value == item
      new_list.delete(item)
    end
  end
  return new_list
end

def unique(array:)
  new_list = []
  array.each do |item|
    unless new_list.include?(item)
      new_list << item
    end
  end
  return new_list
end