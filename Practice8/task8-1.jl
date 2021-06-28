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

function mergesort!(a)
    if (length(a)>1)
        a1 = mergesort!(@view a[1:div(length(a),2)]) 
        a2 = mergesort!(@view a[div(length(a),2)+1:length(a)])
        return merge(a1,a2)
    else
        return copy(a)
    end
end