function newton(r::Function, x; ε_x=1e-8, ε_y=1e-8, nmaxiter=20)
    x_k = x
    i = 0
    while (i <= nmaxiter && (abs(x_k-x) > ε_x || x_k==x))
        x = x_k
        x_k = x - r(x)
        i+=1
        println("x_k = ",x,"; x_k+1 = ",x_k)
    end
    if (i > nmaxiter)
        return nothing
    else
        return x_k
    end
end