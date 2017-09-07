class Prime
# n is user input n.to_i
# prime_calculator(22)
  def prime_calculator(n)
    original_array = (2..n-1).to_a
    # prime=2
    total_array_length = original_array.length-1
    new_array = []

    counter = 0
    loop do

      original_array[counter]

      original_array.each do |array_element|
        if (array_element % original_array[counter] == 0) & (array_element / original_array[counter] == 1)
          new_array.push(array_element)
        end
        if array_element % original_array[counter] == 0
          puts array_element
          # break
        elsif array_element % original_array[counter] != 0
          new_array.push(array_element)
        end
      end

      original_array = new_array
      puts original_array

      counter += 1
      puts "c: " + counter.to_s
      puts "a: " + (new_array.length-1).to_s
      if counter < new_array.length-1
        break
        # binding.pry
      end
    end
    return new_array
  end
end
