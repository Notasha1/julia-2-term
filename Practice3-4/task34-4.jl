function shellsort!(a)
    generator=(length(a)÷2^i for i in 1:Int(floor(log2(length(a))))) 
    for i in generator
        for j in firstindex(a):i-1
            insertsort!(@view a[j:i:end]) # - сортировка вставками выделенного (прореженного) подмассива
        end
    end
    return a
end