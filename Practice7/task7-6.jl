function factor(n)
    if (isprime(n))
        return n,1
    end
    v_d = []
    v_k = []
    d = 2
    n_copy=n
    k = 0
    while (d*d<=n && n_copy>1)
        if (isprime(d))
            if (n_copy%d == 0)
                push!(v_d,d)
                while (n_copy%d == 0)
                    n_copy/=d
                    k+=1
                end
                push!(v_k,k)
                k=0
            end 
        end
        d+=1
    end
    if (n_copy!=1)
        push!(v_d,Int(n_copy))
        push!(v_k,1)
    end
    return v_d,v_k
end