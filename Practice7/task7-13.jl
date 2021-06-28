function bisect(f::Function, a, b, ε)
    y_a = f(a)
    while b - a > ε
        x_m = (a+b)/2
        y_m = f(x_m)
        if y_m == 0
            return x_m
        end
        if y_m * y_a > 0 
            a = x_m
        else
            b = x_m
        end
    end
    return (a + b) / 2
end