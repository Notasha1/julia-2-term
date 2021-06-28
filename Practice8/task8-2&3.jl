import Base.merge
function merge(A::Vector{T},B::Vector{T})::Vector{T} where T
    i,j=1,1
    v = Array{Int}(undef,length(A)+length(B))
    for k in 1:(length(A)+length(B))
        if (i!=length(A)+1 && (j==length(B)+1 || A[i]<B[j]))
            v[k]=A[i]
            i+=1
        elseif (j!=length(B)+1)
            v[k]=B[j]
            j+=1
        end
    end
    return v
end

function mergesort2!(a)
    k=1
    i=1
    while (2*k<length(a))
        if (i>=length(a))
            i=1
            k*=2
        end
        elem_r = i+2k-1
        if (i+2k-1>length(a))
            elem_r = length(a)
        end
        b=merge(a[i:i+k-1], a[i+k:elem_r])
        a[i:elem_r]=b
        i+=2*k
    end
    return a
end