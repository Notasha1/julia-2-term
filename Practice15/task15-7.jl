function find_general(tree::Vector, setver::Set)
    number_visited = 0
    general = 0
    function recurstrace(tree, parent=0)  
        is_mutable_general = false

        for subtree in tree[begin:end-1]
            if number_visited < length(setver)
                recurstrace(subtree, tree[end])
            end
        end
        if tree[end] in setver
            number_visited +=1
            if number_visited == 1
                general = tree[end]
            end                        
        end
        if general==tree[end] 
            is_mutable_general = true
        end
        if is_mutable_general && number_visited < length(setver)
            general = parent
        end
    end
    recurstrace(tree)
    return general
end