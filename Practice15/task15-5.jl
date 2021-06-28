function height(tree::ConnectList{T}, root::T) where T
    h=0
    for i in tree[root]
        h = max(h,height(tree,i))
    end
    return h+1
end

function vernumber(tree::ConnectList{T}) where T
    return length(tree)
end

function leavesnumber(tree::ConnectList{T}, root::T) where T
    if isempty(tree[root])
        return 1
    end
    N=0
    for i in tree[root]
        N += leavesnumber(tree,i)
    end
    return N
end

function maxvalence(tree::NestedVectors)
    mx = 0
    for i in 1:length(tree)
        mx = max(mx,length(tree[i][1]))
    end
    return mx
end

function sumpath_numver(tree::Tree)
    N = 1
    S = 1
    for sub in tree.sub
        s, n = sumpath_numver(sub)
        S += s + 1
        N += n
    end
    return S, N
end
