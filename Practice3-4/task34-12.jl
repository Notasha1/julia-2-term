function transpose!(A::Matrix{T})::Matrix{T} where T
    for i in 1:size(A,1)
        for j in 1:i
            tmp = a[i,j]
            a[i,j] = a[j,i]
            a[j,i] = tmp
        end
    end
    return A
end