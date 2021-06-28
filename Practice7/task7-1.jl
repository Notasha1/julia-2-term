function pow(a, n::Integer)
    k, t, p = n, 1, a
    while k>0
        if (k%2 == 0)
            k÷=2
            p*=p
        else
            k-=1
            t*=p
        end   
    end
return t
end