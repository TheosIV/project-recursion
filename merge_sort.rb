def merge_sort(array)
    return array if array.length < 2

    sorted_array = []
    mid = array.length / 2

    first_half = merge_sort(array[0...mid])
    second_half = merge_sort(array[mid..array.length])

    until first_half.empty? || second_half.empty?
        first_half.first <= second_half.first ? sorted_array << first_half.shift : sorted_array << second_half.shift
    end

    sorted_array + first_half + second_half
end

p merge_sort([5, 2, 9, 8, 0, 3])