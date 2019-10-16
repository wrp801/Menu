import JSON

## reads in the current menu and returns an array of the options
function get_current_menu()

    m = Dict()

    open("current menu.json","r") do f 

       m =  JSON.parse(f)

    end## end do 
    
    return values(m)
    
end ## end function 