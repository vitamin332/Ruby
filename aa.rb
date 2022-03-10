def combination(array, number, temp = "", result = [])
    return result << temp if temp.size >= number

    array.each_with_index do |top, i|
        sub_array = array[i + 1, array.size]
        # p "#{temp + top}, #{sub_array}"
        combination(sub_array, number, temp + top, result)
    end
    return result
end

result = combination(["A", "B", "C"], 3)
p result.size
p result