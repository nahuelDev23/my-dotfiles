function ls
    lsd -l $argv
end

function ls_tree
    lsd --tree --depth 2 --blocks permission,size,name
end
