module MenuSelection
## this includes all the functions written
for x in readdir(joinpath(pwd(),"Functions"))
    nf = joinpath(pwd(),"Functions",x)
    include(nf)
end ## end for

function make_menu(number_of_days,with_today = false)

    filtered_selection = collect(values(show_menu(number_of_days)))

    filtered_days = add_days(number_of_days,include_today = with_today)

    for (i,j) in zip(filtered_selection,filtered_days)
        println("For $j: the menu item is $i")
    end ## end for

end # function

end  # module 
