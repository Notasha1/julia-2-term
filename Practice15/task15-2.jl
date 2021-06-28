NestedVectors = Vector
function convert(tree::NestedVectors)
    v = zeros(length(tree)-1)
    res = Array{Array{Int,1}}(undef,length(tree))
    mx = length(tree)-1
    for i in 1:length(tree)-1
        res[i] = [tree[i][1][1]]
        v[i] = tree[i][2][1]
        mx = max(mx,tree[i][1][1])
        for j in 2:length(tree[i][1])
            push!(res[i],tree[i][1][j])
            mx = max(mx,tree[i][1][j])
        end
    end
    used = zeros(mx)
    for i in 1:length(tree)-1
        used[tree[i][2][1]]=1
    end
    for i in 1:mx
        if used[i]==0
            insert!(res,i,[])
        end
    end
    for i in 1:length(res)-1
        for j in 1:length(res[i])
            used[res[i][j]]=1
            for k in 1:length(v)
                if (res[i][j]==v[k])
                    v[k] = -1
                end
            end
        end
    end
    _root = []
    for i in 1:length(v)
        if (v[i]!=-1)
            push!(_root,v[i])
        end
    end
    root = K[length(K)][1]
    res[root] = _root
    return res
end