function order(a,p)
    phi = p-1
    res = 0
    for i in 1:(p-1)
        if (phi%i==0 && (a^i)%p==1)
            res = i
            break
        end
    end
    return res
end