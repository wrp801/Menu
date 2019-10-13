using StatsBase
import JSON


function show_menu(n_days,print_menu = false)

    my_menu = Dict()

    open("poulsen menu.json","r") do f
             

        my_menu = JSON.parse(f);
        end ## end do


    function n_random_days(n = n_days) ## this function provides random days between 1 and the length of the menu
        
         

        sample(1:length(my_menu),n,replace = false)

        end ## end function

    n = n_random_days(n_days)
    n = collect(map(x -> string(x),n)) ## changes the values to a string instead of an integer 

    if print_menu
        for i in n
            println(my_menu[i])
        end ## end for
    else 

        # n_key = filter(m->keys(m) in n,my_menu)

        # return my_menu[n_key]

        k = keys(my_menu)

        println(k)
        println(n)
        

    end



end ## end function

show_menu(4,false)



