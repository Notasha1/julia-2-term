function isprime(n::Int)::Bool
    d=2
    while (d*d<=n)
        if (n%d==0)
            return false
        end
        d+=1
    end
    return true
end
