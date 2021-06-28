function non_decreasing_amounts(a)
    return sum(a)
end

function non_decreasing_zeroz(a)
    return count(i->(i==0), a)
end

function sort1!(matrix)
    vec_colons = [@view matrix[:,j] for j in 1:size(matrix,2)]
    vec_colons = sortkey!(non_decreasing_amounts, vec_colons)
    matrix = hcat(hcat(vec_colons...))
    return matrix
end

function sort2!(matrix)
    vec_colons = [@view matrix[:,j] for j in 1:size(matrix,2)]
    vec_colons = sortkey!(non_decreasing_zeroz, vec_colons)
    matrix = hcat(hcat(vec_colons...))
    return matrix
end