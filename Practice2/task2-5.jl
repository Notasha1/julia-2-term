function insertion_sort(v::Array{Any, 1})
    for i in 1:length(v)
        key = v[i]
        j = i - 1
        while (j >= 0 && v[j] > key) 
            v[j + 1] = v[j] 
            j = j - 1  
        end 
            v[j + 1] = key 
    end
    return v
end