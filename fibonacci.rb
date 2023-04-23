# using iteration
def fibs(n)
    result = [0, 1]
    while n > 2
        result << result[-2] + result[-1]
        n -= 1
    end
    result
end

# using recursion
def fibs_rec(n)
    return [0, 1] unless n > 2

    result = fibs_rec(n - 1)
    result << result[-2] + result[-1]
end

puts "Iteration: #{fibs(10)}"
puts "Recursion: #{fibs_rec(10)}"