function zerodivisors(n::Integer)
    v = [1]
    for i in 2:n
        if (gcd(n,i)==1)
                push!(v,i)
        end
    end
    return v
end