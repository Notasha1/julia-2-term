function allnilpotents(n::Integer)
    nil = []
    v_d,nothing=factor(n)
    mult = 1
    for i in 1:length(v_d)
        mult *=v_d[i]
    end
    count_nil = Int(n/mult)
    for i in 1:count_nil-1
        push!(nil,mult*i)
    end
    return nil
end