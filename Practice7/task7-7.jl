function euler_function(n)
    if (isprime(n))
        return n-1
    else
        a,b=factor(n)
        res=1
        for i in 1:length(a)
            if (b[i]==1)
                a[i]-=1
            else
                a[i] = a[i]^b[i] - a[i]^(b[i]-1)
            end
            res*=a[i]
        end
        return res
    end
end