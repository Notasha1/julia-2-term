function delete_at!(A::Vector{T},i::Int)::Vector{T} where T
    new_A=Array{Int}(undef,length(A)-1)
    j=1
    k=1
    while (j<length(A))
        if k!=i
            new_A[j]=A[k]
            j+=1
        end
        k+=1
    end
    return new_A
end

function insert_at!(A::Vector{T},i::Int,value::T)::Vector{T} where T
    new_A=Array{Int}(undef,length(A)+1)
    j=1
    k=1
    while (j<=length(new_A))
        if k==i
            new_A[j]=value
            k-=1
            i=-1
        else
            new_A[j]=A[k]
        end
        k+=1
        j+=1
    end
    return new_A
end