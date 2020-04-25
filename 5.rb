$n = 13
$h = $n/2



if $n%2 == 1
    $m = ($n / 2) + 1
    puts ("gia tri truc doi xung la #{$m}")
else
    $n%2 == 0
    break
    puts ("gia tri #{a} la so chan khong thuc hien duoc chuong trinh")
end


def print_or_not(x,y)

    start_top = $m - y + 1   #diem bat dau in
    end_top = $m + y - 1  #diem ket thuc in

    start_below = y - $h
    end_below = $n - (y - $h) + 1 
    

    if start_top <= x and x <= end_top and y <= $m and (x - start_top)%2 == 1
        result = "*"          
    elsif start_below <= x and x <= end_below and $m <= y and (x - start_below)%2 == 1
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