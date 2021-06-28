function calcsort(a, diap::NTuple{2, Int})
    left_border, right_border = diap
    nums_count = right_border - left_border + 1
    nums = zeros(Int, nums_count)
    for i in a
        nums[i - left_border + 1] += 1 
    end
    my_ans = []
    for i in 1:(right_border - left_border + 1)
        for j in 1:nums[i]
            push!(my_ans, i + left_border - 1)
        end
    end
    return my_ans 
end

function calcsort(a, diap::Vector{Int})
    nums = Dict{Int64, Int64}()
    for i in a
        nums[i]= get(nums, i, 0) + 1
    end
    my_ans = []
    for i in sort(collect(keys(nums)))
        to_push = [i for j in 1:nums[i]]
        push!(my_ans, to_push...)
    end
    return my_ans 
end