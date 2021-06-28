function transpose_w_array!(A::Matrix{T})::Matrix{T} where T
    B=Matrix{T}(undef,size(A,2),size(A,1))
    for i in 1:size(A,1)
        for j in 1:size(A,2)
            B[j,i]=A[i,j]
        end
    end
    return B
end