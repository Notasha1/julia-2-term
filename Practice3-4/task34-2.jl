function sort_puz2!(v::Array)
    right_index_iter = 1
    right_index = 1
    is_sorted = true
    for i in 1:(length(v)-1)
        for j in right_index_iter:(length(v)-1)
            if (v[j]>v[j+1])
                is_sorted = false
                v[j],v[j+1]=v[j+1],v[j]
            elseif (v[j]<=v[j+1] && is_sorted)
                right_index =+1
            end
        end
        right_index_iter=right_index
        is_sorted = true
    end
    return(v)
end
