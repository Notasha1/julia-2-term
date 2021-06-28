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

function quicksort!(a)
    if isempty(a)
        return a
    end
    a, i, j = partsort!(a,a[begin])
    quicksort!(a[begin:i])
    quicksort!(a[j+1:end])
    return a
end

function quicksort2!(a)
    if isempty(a)
        return a
    end
    a, i = partsort2!(a,a[begin])
    quicksort!(a[begin:i])
    quicksort!(a[i:end])
    return a
end
