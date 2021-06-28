function find_all_max(a)
    max_i=[1]
    len = length(a)
    for i in 2:len
        if A[i]>A[max_i[end]]
            max_i=[i]
        elseif A[i]==A[max_i[end]]
            push!(max_i, i)
        end
    end
    return max_i    
end