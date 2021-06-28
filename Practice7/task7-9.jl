function inv(m::Integer,n::Integer)
    if (gcd(m,n)>1)
        return nothing
    else
        return gcdex(m,n)
    end
end