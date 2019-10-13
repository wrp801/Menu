module selection

import StatsBase

export random_days
export sub_item

function random_days(n_days,day_range)

    days = StatsBase.sample(1:day_range,n_days,replace = false)

    return days

function sub_item(item::String,existing_selection)

    if typeof(item) != String

        error("Argument $item is not a string")
    end

    try
    existing_index = findall(x -> x in item,existing_selection)
    menu_index = findall(x -> x in item, menu)

    pop!(existing_selection[existing_index])  ## remove from menu


    catch ex
    error("Was not able to locate $item in the menu")
    end

end

end



end  # module
