function sort_shaker!(v::Array)
    left=firstindex(v)
    right=lastindex(v)
    while (left<right)
        for i in right:-1:left+1
            if (v[i-1]>v[i])
                v[i-1],v[i]=v[i],v[i-1]
            end
        end
        left =+1
        for i in left+1:right
            if (v[i-1]>v[i])
                v[i-1],v[i]=v[i],v[i-1]
            end
        end
        right -=1
    end
    return(v)
end