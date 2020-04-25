$n = 9
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
    min = $m - y + 1
    if min <= x and x <= max and y <= $m
        result = "*"    
    elsif $m <= y and x <= ($n - (y - $h) + 1 ) and (y - $h) <= x
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