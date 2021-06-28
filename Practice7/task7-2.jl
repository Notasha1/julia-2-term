function fibonacci(n::Integer)
    a,b,c=1,1,1
    rc,d,rd = 0,0,1
    while (n>0)
        if (n%2!=0)
            tc = rc
            rc = rc*a + rd*c
            rd = tc*b + rd*d
        end
        ta,tb,tc=a,b,c
        a = a*a  + b*c
        b = ta*b + b*d
        c = c*ta + d*c
        d = tc*tb+ d*d
        n >>= 1
    end
    return rc
end