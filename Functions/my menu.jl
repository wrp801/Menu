using StatsBase
import JSON


function show_menu(n_days,;print_menu = false)

    my_menu = Dict()

    open("poulsen menu.json","r") do f


         my_menu = JSON.parse(f);
        end ## end do

    current_menu = Dict()
    open("current menu.json","r") do f
         current_menu = JSON.parse(f)
    end ## end do


    vals_current = collect(values(current_menu))

    my_menu = filter((k,v) -> !(v in vals_current),my_menu)





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
        ## create an empty dictionary to return the filtered values
        menu_filtered = Dict()

        n_key = collect(filter(k -> k in n,keys(my_menu)))

        for (k,v) in my_menu
            if k in n_key
                push!(menu_filtered,k=>v)
            end ## end if
        end ## end for

        return menu_filtered


    end



end ## end function
