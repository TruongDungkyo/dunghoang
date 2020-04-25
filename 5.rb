$n = 13

$h = $n/2



if $n%2 == 1
    $m = ($n / 2) + 1
    puts ("gia tri m la #{$m}")
else
    $n%2 == 0
    puts ("gia tri #{a} la so chan khong thuc hien duoc chuong trinh")
end


def print_or_not(x,y)
    max = $m + y - 1
    max1 = $n - (y - $h) + 1 
    min = $m - y + 1
    min1 = y - $h
    
    if min <= x and x <= max and y <= $m and (x - min)%2 == 1
        result = "*"    
    elsif min1 <= x and x <= max1 and $m <= y and (x - min1)%2 == 1
        result = "*"
    else
        result = " "
    end
    return result
end



for i in 1..$n
    for j in 1..$n
        string = print_or_not(j,i)
        print string
    end
    print "\n"
end


for i in 1..$n
    for j in 1..$n
        string = print_or_not(j,i)
        print string
    end
    print "\n"
end