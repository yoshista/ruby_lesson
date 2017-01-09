a = (1..100).to_a
p a

a = Array.new
100.times{|i| a[i] = i+1}
p a

a2 = a.collect{|i| i*100}
p a2

a.collect!{|i| i*100}
p a

a = (1..100).to_a
a3 = a.reject{|i| i % 3 != 0}
p a3

a4 = a.select{|i| i % 3 == 0}
p a4

a.reject!{|i| i % 3 != 0}
p a

a = (1..100).to_a

a2 = a.sort_by{|i| -i}
p a2

a2 = a.reverse
p a2

a2 = a.sort{|n1, n2| n2 <=> n1}
p a2

a = (1..100).to_a
result = 0
a.each{|i| result += i}
p result

p a.inject(0) {|memo, i| memo += i }

ary = (1..100).to_a
result = Array.new
10.times do |i|
    result << ary[i*10, 10]
end
p result

def sum_array(ary1, ary2)
    result = Array.new
    i = 0
    ary1.each do |elem1|
        result << elem1 + ary2[i]
        i += 1
    end
    return result
end

def sum_array_zip(ary1, ary2)
    result = Array.new
    ary1.zip(ary2){|a, b| result << a + b }
    return result
end

p sum_array((1..30).to_a, (31..60).to_a)
p sum_array_zip((1..30).to_a, (31..61).to_a)