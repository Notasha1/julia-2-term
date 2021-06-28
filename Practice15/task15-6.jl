function alltypes(type)
    for i in subtypes(type)
        println(i)
        alltypes(i)
    end
end