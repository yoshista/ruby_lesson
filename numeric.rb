def cels_to_fahr(n)
    return n * 9.0 / 5.0 + 32.0
end

def fahr_to_cels(n) 
    return (n.to_f - 32) * 5.0 / 9.0
end

def dice
    return Random.rand(6) + 1
end

def dice10
    ret = 0
    10.times do
        ret += dice
    end
    ret
end

def prime?(num)
    return false if num < 2
    2.upto(Math.sqrt(num)) do |i|
        if num % i == 0
            return false
        end
    end
    return true
end

p cels_to_fahr(25)

1.upto(100) do |i|
    p "#{i}: #{fahr_to_cels(i)}"
end

p dice

p dice10

1.upto(10) do |n|
    puts n if prime?(n)
end
