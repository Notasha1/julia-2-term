function sortkey!(func::Function, a)
    sortkey!(func.(a), a)
end