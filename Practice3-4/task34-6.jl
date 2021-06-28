function permute_!(A::Vector{T},perm::Vector{Int})::Vector{T} where T
    return slice(A,perm);
end