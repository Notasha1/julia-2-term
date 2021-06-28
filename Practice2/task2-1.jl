function sortkey!(key_values, a)
    size = length(key_values)
    for i in 1:size
        for j in 1:size
            if key_values[i] < key_values[j]
                key_values[i], key_values[j] = key_values[j], key_values[i]
                a[i], a[j] = a[j], a[i]
            end
        end
    end
    return a
end