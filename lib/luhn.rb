module Luhn
  def self.is_valid?(number)
    #Break credit card into digits
    num_list = []
    number.to_s.each_char { |char| num_list << char.to_i}

    #Loop through numbers, doubling the every other number starting at the right
    count = num_list.length - 2

    while count >= 0 do
      num_list[count] = num_list[count] * 2
      if num_list[count] >= 10
        num_list[count] = num_list[count] - 9
      end
      count -= 2
    end

    num_list.sum % 10 == 0
  end
end